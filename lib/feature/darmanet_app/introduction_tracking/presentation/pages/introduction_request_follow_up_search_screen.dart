import 'dart:io';

import 'package:ios_samx/core/constant/strings.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/extensions/convert_date.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/core/utils/download_blob_file.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:ios_samx/core/widgets/button_primary.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/entities/get_all_family_by_main_national_code/response_data/get_family_by_main_national_code_response_data.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/entities/person_voucher_request_list/records/person_voucher_request_list_records.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/get_all_family_by_main_national_code/param/get_all_family_by_main_national_code_param.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/person_voucher_request_list/param/person_voucher_request_list_param.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/voucher_report/param/voucher_report_param.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/presentation/blocs/get_all_family_by_main_national_code/get_all_family_by_main_national_code_bloc.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/presentation/blocs/person_voucher_request_list/person_voucher_request_list_bloc.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/presentation/blocs/voucher_report/voucher_report_bloc.dart';
import 'package:ios_samx/injection_container.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:hive/hive.dart';
import 'package:page_transition/page_transition.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

import '../../../../../core/base_widget/app_top_app_bar/app_top_app_bar.dart';
import '../../../../../core/constant/app_style.dart';
import '../../../../../core/constant/theme/custom_theme.dart';
import '../../../../../core/widgets/button_secondary.dart';
import '../../../../../core/widgets/simple_rounded_container.dart';
import 'introduction_followup_request_detail_screen.dart';

class IntroductionRequestFollowUpSearchScreen extends StatefulWidget {
  const IntroductionRequestFollowUpSearchScreen({super.key});

  @override
  State<IntroductionRequestFollowUpSearchScreen> createState() => _IntroductionRequestFollowUpSearchScreenState();
}

class _IntroductionRequestFollowUpSearchScreenState extends State<IntroductionRequestFollowUpSearchScreen> {
  String? dropdownValue;
  late GetAllFamilyByMainNationalCodeBloc _getAllFamilyByMainNationalCodeBloc;
  late PersonVoucherRequestListBloc _personVoucherRequestListBloc;
  late VoucherReportBloc _voucherReportBloc;
  TextStyle fromDateTextStyle = TextTypography.labelStyle;
  TextStyle toDateTextStyle = TextTypography.labelStyle;

  @override
  void initState() {
    Box box = Hive.box(Strings.appDBName);
    String? nationalCode = box.get(Strings.nationalId);
    _getAllFamilyByMainNationalCodeBloc = sl<GetAllFamilyByMainNationalCodeBloc>();
    _personVoucherRequestListBloc = sl<PersonVoucherRequestListBloc>();
    _voucherReportBloc = sl<VoucherReportBloc>();

    _getAllFamilyByMainNationalCodeBloc.add(
      GetAllFamilyByMainNationalCodeEvent.getAllFamilyByMainNationalCodeEventCalled(
        param: GetAllFamilyByMainNationalCodeParam(limit: 15, offset: 0, mainNationalCode: nationalCode!),
      ),
    );
    super.initState();
  }

  List<GetFamilyByMainNationalCodeResponseData> dropDownList = [];
  List<PersonVoucherRequestListRecords> records = [];

  String personId = "";

  String labelFromDate = 'darmanet.please_select'.tr();
  String labelToDate = 'darmanet.please_select'.tr();
  Jalali? fromDatePicked;
  Jalali? toDatePicked;
  String selectedFromDate = Jalali.now().toJalaliDateTime();
  String selectedToDate = Jalali.now().toJalaliDateTime();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = ResponsiveLayout.getDeviceType(context);
    final colorTheme = context.colorTheme<CustomTheme>();

    return BlocProvider(
      create: (context) => _voucherReportBloc,
      child: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
              backgroundColor: Colors.white,
              appBar: AppTopAppBar(
                title: 'darmanet.referral_request_tracking'.tr(),
                isQrCode: false,
              ),
              body: Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.03,
                    ),
                    SimpleRoundedContainer(
                      width: width * 0.9,
                      height: height * 0.4,
                      bgColor: colorTheme.lightWhite,
                      borderRadius: width * 0.02,
                      borderColor: colorTheme.borders,
                      widget: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'darmanet.search_request'.tr(),
                                  style: AppStyle.size15Weight600,
                                ),
                                Icon(
                                  Icons.search,
                                  color: colorTheme.primary,
                                ),
                              ],
                            ),
                            Divider(
                              height: 2,
                              color: colorTheme.solidVariant,
                            ),
                            dropDown(
                                height: height * 0.15, width: width * 0.9, title: 'darmanet.insured_person_name'.tr()),
                            Container(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'darmanet.date'.tr(),
                                style: AppStyle.size13Weight400,
                              ),
                            ),
                            SizedBox(
                              width: width * 0.8,
                              height: height * 0.1,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      'darmanet.from'.tr(),
                                      style: AppStyle.size13Weight400,
                                    ),
                                  ),
                                  SimpleRoundedContainer(
                                    width: width * 0.3,
                                    height: height * 0.06,
                                    bgColor: colorTheme.textInverse,
                                    borderRadius: width * 0.01,
                                    borderColor: colorTheme.solid,
                                    widget: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(labelFromDate, style: fromDateTextStyle),
                                          Image(
                                            width: 20,
                                            image: const AssetImage("assets/images/calendar.png"),
                                            color: colorTheme.text,
                                          ),
                                        ],
                                      ),
                                    ),
                                    onTap: () async {
                                      fromDatePicked = await showPersianDatePicker(
                                          context: context,
                                          initialDate: Jalali.now(),
                                          firstDate: Jalali(1385, 8),
                                          lastDate: Jalali(Jalali.now().year, Jalali.now().month, Jalali.now().day,
                                              Jalali.now().hour, Jalali.now().minute + 1),
                                          initialEntryMode: PDatePickerEntryMode.calendarOnly,
                                          initialDatePickerMode: PDatePickerMode.year,
                                          builder: (context, child) {
                                            return Theme(
                                              data: ThemeData(
                                                colorScheme: ColorScheme.light(
                                                  primary: colorTheme.primary,
                                                ),
                                                dialogTheme: const DialogTheme(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.all(Radius.circular(0)),
                                                  ),
                                                ),
                                              ),
                                              child: child!,
                                            );
                                          });

                                      if (fromDatePicked != null && fromDatePicked != selectedFromDate) {
                                        setState(() {
                                          labelFromDate =
                                              "${fromDatePicked?.year.toString().toPersianDigit()}/${fromDatePicked?.month.toString().toPersianDigit()}/${fromDatePicked?.day.toString().toPersianDigit()}";
                                          fromDateTextStyle = TextTypography.valueInputStyle;
                                        });
                                      }
                                    },
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      'darmanet.to'.tr(),
                                      style: AppStyle.size13Weight400,
                                    ),
                                  ),
                                  SimpleRoundedContainer(
                                    width: width * 0.3,
                                    height: height * 0.06,
                                    bgColor: colorTheme.textInverse,
                                    borderRadius: width * 0.01,
                                    borderColor: colorTheme.solid,
                                    widget: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(labelToDate, style: toDateTextStyle),
                                          Image(
                                            width: 20,
                                            image: const AssetImage("assets/images/calendar.png"),
                                            color: colorTheme.black,
                                          ),
                                        ],
                                      ),
                                    ),
                                    onTap: () async {
                                      toDatePicked = await showPersianDatePicker(
                                          context: context,
                                          initialDate: Jalali.now(),
                                          firstDate: Jalali(1385, 8),
                                          lastDate: Jalali(Jalali.now().year, Jalali.now().month, Jalali.now().day,
                                              Jalali.now().hour, Jalali.now().minute + 1),
                                          initialEntryMode: PDatePickerEntryMode.calendarOnly,
                                          initialDatePickerMode: PDatePickerMode.year,
                                          builder: (context, child) {
                                            return Theme(
                                              data: ThemeData(
                                                colorScheme: ColorScheme.light(
                                                  primary: colorTheme.primary,
                                                ),
                                                dialogTheme: const DialogTheme(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.all(Radius.circular(0)),
                                                  ),
                                                ),
                                              ),
                                              child: child!,
                                            );
                                          });

                                      if (toDatePicked != null && toDatePicked != selectedToDate) {
                                        if (toDatePicked!.compareTo(fromDatePicked!) >= 0) {
                                          setState(() {
                                            labelToDate =
                                                "${toDatePicked!.year.toString().toPersianDigit()}/${toDatePicked!.month.toString().toPersianDigit()}/${toDatePicked!.day.toString().toPersianDigit()}";
                                            toDateTextStyle = TextTypography.valueInputStyle;
                                          });
                                        } else {
                                          if (!context.mounted) return;
                                          showErrorWidget(context, 100, "darmanet.date_picked_warning".tr());
                                        }
                                      }
                                    },
                                  ),
                                ],
                              ),
                            ),
                            BlocConsumer<PersonVoucherRequestListBloc, PersonVoucherRequestListState>(
                              bloc: _personVoucherRequestListBloc,
                              listener: (context, state) {
                                state.maybeWhen(
                                    loadFailure: (failure) {
                                      showErrorWidget(context, failure.code, failure.message!);
                                    },
                                    loadSuccess: (entities) {
                                      setState(() {
                                        records = entities.records;
                                      });
                                    },
                                    orElse: () {});
                              },
                              builder: (context, state) {
                                final bool loading = state is PersonVoucherRequestListStateLoading;
                                return ButtonPrimary(
                                  title: "darmanet.search_referrals".tr(),
                                  icon: Icons.search,
                                  buttonLoading: loading,
                                  customWidth: width * 0.8,
                                  customHeight: 48,
                                  style: AppStyle.size14Weight600White,
                                  onPressed: () {
                                    if (personId.isNotEmpty) {
                                      _personVoucherRequestListBloc.add(
                                        PersonVoucherRequestListEvent.personVoucherRequestListEventCalled(
                                          param: PersonVoucherRequestListParam(
                                            personId: personId,
                                            creatorId: "",
                                            submitType: "",
                                            creatorIsExpert: "false",
                                            voucherNumber: "",
                                            fromDate: fromDatePicked != null
                                                ? ConvertDate().convertJalaliToGregorianString(
                                                    fromDatePicked!.year.toString(),
                                                    fromDatePicked!.month.toString(),
                                                    fromDatePicked!.day.toString(),
                                                  )
                                                : "",
                                            toDate: toDatePicked != null
                                                ? ConvertDate().convertJalaliToGregorianString(
                                                    toDatePicked!.year.toString(),
                                                    toDatePicked!.month.toString(),
                                                    toDatePicked!.day.toString(),
                                                  )
                                                : "",
                                            limit: 100,
                                            nationalCode: "",
                                            offset: 0,
                                            patientName: "",
                                            sortDir: "DESC",
                                            sortField: "DateInserted",
                                            sumFieldName: "",
                                          ),
                                        ),
                                      );
                                    } else {
                                      showErrorWidget(context, 100, "لطفا نام بیمه شده انتخاب شود");
                                    }
                                  },
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),

                    ///Result
                    ///
                    SizedBox(
                      height: height * 0.03,
                    ),
                    SizedBox(
                      width: width,
                      height: height * 0.4,
                      child: ListView.builder(
                          itemCount: records.length,
                          scrollDirection: Axis.vertical,
                          physics: const AlwaysScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
                              child: SimpleRoundedContainer(
                                width: width,
                                height: height * 0.35,
                                bgColor: colorTheme.layer,
                                borderRadius: width * 0.02,
                                borderColor: colorTheme.solid,
                                widget: SizedBox(
                                  height: height * 0.2,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Column(
                                              children: [
                                                Text(
                                                  'darmanet.referral_number_with_colon'.tr(),
                                                  style: AppStyle.size11Weight400Grey50,
                                                ),
                                                Text(
                                                  records[index].voucherNumber!.toPersianDigit(),
                                                  style: AppStyle.size13Weight600black,
                                                ),
                                              ],
                                            ),
                                            const Spacer(),
                                            SimpleRoundedContainer(
                                                width: width * 0.2,
                                                height: height * 0.05,
                                                bgColor: colorTheme.warningContainer,
                                                borderRadius: width * 0.02,
                                                borderColor: colorTheme.fixedWarning,
                                                widget: Center(
                                                  child: Text(
                                                    records[index].stateDesc!,
                                                    style: AppStyle.size10Weight600Orange,
                                                  ),
                                                )),
                                            Padding(
                                              padding: const EdgeInsets.only(right: 8.0),
                                              child: BlocConsumer<VoucherReportBloc, VoucherReportState>(
                                                listener: (context, state) {
                                                  state.maybeWhen(
                                                    loadFailure: (failure) {
                                                      showErrorWidget(context, failure.code, failure.message!);
                                                    },
                                                    loadSuccess: (voucherReportEntities) async {
                                                      try {
                                                        if (kIsWeb) {
                                                          // downloadBlobFile(
                                                          //     voucherReportEntities.dioResponse.data, "print.pdf");
                                                        } else {
                                                          // final status = await Permission.storage.request();
                                                          // To check whether permission is given for this app or not.
                                                          var status = await Permission.storage.status;
                                                          if (!status.isGranted) {
                                                            // If not we will ask for permission first
                                                            await Permission.storage.request();
                                                          }
                                                          Directory directory = Directory("");
                                                          if (Platform.isAndroid) {
                                                            // Redirects it to download folder in android
                                                            directory = Directory("/storage/emulated/0/Download");
                                                          } else {
                                                            directory = await getApplicationDocumentsDirectory();
                                                          }

                                                          final exPath = '${directory.path}/print.pdf';
                                                          print("Saved Path: $exPath");
                                                          await Directory(exPath).create(recursive: true);
                                                          File file = voucherReportEntities.dioResponse.data;

                                                          // ignore: use_build_context_synchronously
                                                          showDialog(
                                                              context: context,
                                                              builder: ((context) {
                                                                return AlertDialog(
                                                                  content: SizedBox(
                                                                    height: MediaQuery.of(context).size.height * 0.5,
                                                                    child: PDFView(
                                                                      filePath: file.path,
                                                                      enableSwipe: true,
                                                                      swipeHorizontal: true,
                                                                      autoSpacing: false,
                                                                      pageFling: true,
                                                                      onRender: (pages) {},
                                                                      onError: (error) {},
                                                                      onPageError: (page, error) {},
                                                                    ),
                                                                  ),
                                                                );
                                                              }));
                                                        }
                                                      } catch (e) {
                                                        print(e);
                                                      }
                                                    },
                                                    orElse: () {},
                                                  );
                                                },
                                                builder: (context, state) {
                                                  final bool loading = state is VoucherReportStateLoading;
                                                  return SimpleRoundedContainer(
                                                    width: width * 0.1,
                                                    height: height * 0.05,
                                                    onTap: () {
                                                      if (records[index].voucherId == null) {
                                                        showInfoWidget(
                                                          context,
                                                          "darmanet.no_referral_letter_for_this_request".tr(),
                                                        );
                                                      } else {
                                                        _voucherReportBloc.add(
                                                          VoucherReportEvent.voucherReportEvent(
                                                            param: VoucherReportParam(
                                                              id: records[index].voucherId!,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                    },
                                                    bgColor: Colors.transparent,
                                                    borderRadius: width * 0.02,
                                                    borderColor: colorTheme.solidVariant,
                                                    widget: Center(
                                                      child: loading
                                                          ? const Padding(
                                                              padding: EdgeInsets.all(8.0),
                                                              child: CircularProgressIndicator(),
                                                            )
                                                          : Image(
                                                              width: 20,
                                                              image: const AssetImage("assets/images/printer.png"),
                                                              color: colorTheme.solidVariant,
                                                            ),
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                        Divider(
                                          height: 2,
                                          color: colorTheme.intComponents,
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "darmanet.registrar".tr(),
                                              style: AppStyle.size13Weight400Grey50,
                                            ),
                                            Text(
                                              records[index].customerCompanyName!,
                                              style: AppStyle.size13Weight600black,
                                            ),
                                          ],
                                        ),
                                        Divider(
                                          height: 2,
                                          color: colorTheme.intComponents,
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "darmanet.patient_name_title".tr(),
                                              style: AppStyle.size13Weight400Grey50,
                                            ),
                                            Text(
                                              records[index].personName!,
                                              style: AppStyle.size13Weight600black,
                                            ),
                                          ],
                                        ),
                                        Divider(
                                          height: 2,
                                          color: colorTheme.intComponents,
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "darmanet.registration_date_".tr(),
                                              style: AppStyle.size13Weight400Grey50,
                                            ),
                                            Text(
                                              ConvertDate()
                                                  .convertGregorianToJalali(records[index].dateInserted!.toString()),
                                              style: AppStyle.size13Weight600black,
                                            ),
                                          ],
                                        ),
                                        records[index].state == 1
                                            ? Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  ButtonSecondary(
                                                    title: "darmanet.edit".tr(),
                                                    buttonLoading: false,
                                                    style: AppStyle.size12Weight500.copyWith(color: colorTheme.primary),
                                                    customHeight: 52,
                                                    customWidth: width * 0.4,
                                                    assetName: 'assets/images/edit.png',
                                                    onPressed: () {
                                                      Navigator.push(
                                                          context,
                                                          PageTransition(
                                                              child: IntroductionFollowUpRequestDetailScreen(
                                                                voucherId: records[index].id!,
                                                                enable: true,
                                                              ),
                                                              type: PageTransitionType.leftToRight));
                                                    },
                                                  ),
                                                  ButtonSecondary(
                                                    title: "darmanet.view_details".tr(),
                                                    buttonLoading: false,
                                                    style: AppStyle.size12Weight500.copyWith(color: colorTheme.primary),
                                                    customHeight: 52,
                                                    customWidth: width * 0.4,
                                                    assetName: 'assets/images/arrow.png',
                                                    onPressed: () {
                                                      Navigator.push(
                                                        context,
                                                        PageTransition(
                                                          child: IntroductionFollowUpRequestDetailScreen(
                                                            voucherId: records[index].id!,
                                                            enable: false,
                                                          ),
                                                          type: PageTransitionType.leftToRight,
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ],
                                              )
                                            : ButtonSecondary(
                                                title: "darmanet.view_details".tr(),
                                                buttonLoading: false,
                                                style: AppStyle.size12Weight500.copyWith(color: colorTheme.primary),
                                                customHeight: 52,
                                                customWidth: width * 0.9,
                                                assetName: 'assets/images/arrow.png',
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    PageTransition(
                                                      child: IntroductionFollowUpRequestDetailScreen(
                                                        voucherId: records[index].id!,
                                                        enable: false,
                                                      ),
                                                      type: PageTransitionType.leftToRight,
                                                    ),
                                                  );
                                                },
                                              ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    )
                  ],
                ),
              ))),
    );
  }

  Widget dropDown({
    required double height,
    required double width,
    required String title,
  }) {
    return BlocConsumer<GetAllFamilyByMainNationalCodeBloc, GetAllFamilyByMainNationalCodeState>(
      bloc: _getAllFamilyByMainNationalCodeBloc,
      listener: (context, state) {
        state.maybeWhen(
            loadFailure: (failure) {
              showErrorWidget(context, failure.code, failure.message!);
            },
            loadSuccess: (getAllFamilyByMainNationalCodeEntities) {
              dropDownList = getAllFamilyByMainNationalCodeEntities.getFamilyByMainNationalCodeResponseData;
            },
            orElse: () {});
      },
      builder: (context, state) {
        final colorTheme = context.colorTheme<CustomTheme>();
        final bool loading = state is GetAllFamilyByMainNationalCodeStateLoading;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppStyle.size13Weight400,
            ),
            Container(
              width: width,
              margin: const EdgeInsets.only(top: 10),
              child: DropdownButtonFormField(
                value: dropdownValue,
                hint: loading
                    ? const CircularProgressIndicator()
                    : Text(
                        'darmanet.please_select'.tr(),
                        style: AppStyle.size14Weight400Grey50,
                      ),
                validator: (value) => value == null ? "darmanet.pick_insurance".tr() : null,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                style: TextTypography.labelStyle,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: colorTheme.onInfo,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                  isCollapsed: true,
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: colorTheme.error,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: colorTheme.solid,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: colorTheme.solid,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: colorTheme.solid,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: colorTheme.solid,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                  ),
                  errorStyle: TextStyle(
                    fontFamily: "Pelak",
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: colorTheme.error,
                  ),
                  hintText: "darmanet.select_your_contract".tr(),
                  hintStyle: TextStyle(
                    fontFamily: "Pelak",
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: colorTheme.solid,
                  ),
                ),
                items: dropDownList
                    .map(
                      (value) => DropdownMenuItem(
                        value: value,
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Text(
                            value.text,
                            textDirection: TextDirection.ltr,
                            style: TextTypography.valueInputStyle,
                          ),
                        ),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    value as GetFamilyByMainNationalCodeResponseData;
                    personId = value.value;
                  });
                },
              ),
            ),
          ],
        );
      },
    );
  }
}

class FileStorage {
  static Future<String> getExternalDocumentPath() async {
    // To check whether permission is given for this app or not.
    var status = await Permission.storage.status;
    if (!status.isGranted) {
      // If not we will ask for permission first
      await Permission.storage.request();
    }
    Directory directory = Directory("");
    if (Platform.isAndroid) {
      // Redirects it to download folder in android
      directory = Directory("/storage/emulated/0/Download");
    } else {
      directory = await getApplicationDocumentsDirectory();
    }

    final exPath = directory.path;
    print("Saved Path: $exPath");
    await Directory(exPath).create(recursive: true);
    return exPath;
  }
}
