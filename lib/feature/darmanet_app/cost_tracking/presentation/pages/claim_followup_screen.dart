import 'dart:ui';

import 'package:ios_samx/core/constant/strings.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/get_active_by_person/get_active_by_person_response_data/get_active_by_person_response_data.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/get_all_family_for_all_contract/get_all_family_for_all_contract_response_data/get_all_family_for_all_contract_response_data.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/get_active_by_person/param/get_active_by_person_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/get_all_family_for_all_contract/param/get_all_family_for_all_contract_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/presentation/bloc/get_active_by_person/get_active_by_person_bloc.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/presentation/bloc/get_all_family_for_all_contract/get_all_family_for_all_contract_bloc.dart';
import 'package:ios_samx/feature/darmanet_app/cost_tracking/domain/entities/get_person_family_list/records/family_records.dart';
import 'package:ios_samx/feature/darmanet_app/cost_tracking/domain/usecase/get_person_family_list/param/get_person_family_list_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_tracking/presentation/bloc/get_person_family_list/get_person_family_list_bloc.dart';
import 'package:ios_samx/feature/main_app/dashboard/presentation/pages/dashboard_screen.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

import '../../../../../core/constant/app_style.dart';
import '../../../../../core/extensions/convert_date.dart';
import '../../../../../core/widgets/button_primary.dart';
import '../../../../../core/widgets/alert_dialog.dart';
import '../../../../../core/widgets/simple_footer_rounded_container.dart';
import '../../../../../core/widgets/simple_rounded_container.dart';
import '../../../../../injection_container.dart';

import '../widgets/data_row_widget.dart';
import 'claim_followup_detail_screen.dart';

class ClaimFollowupScreen extends StatefulWidget {
  const ClaimFollowupScreen({super.key});

  @override
  State<ClaimFollowupScreen> createState() => _ClaimFollowupScreenState();
}

class _ClaimFollowupScreenState extends State<ClaimFollowupScreen> {
  late GetActiveByPersonBloc _getActiveByPersonBloc;
  late GetPersonFamilyListBloc _getPersonFamilyListBloc;

  late GetAllFamilyForAllContractBloc _getAllFamilyForAllContractBloc;

  List<GetActiveByPersonResponseData> contractsList = [];
  List<FamilyRecords> familyRecordsList = [];
  List<GetAllFamilyForAllContractResponseData> familyContractsList = [];
  bool loading = true;

  String selectedFromDate = Jalali.now().toJalaliDateTime();
  String selectedToDate = Jalali.now().toJalaliDateTime();
  int currentYear = Jalali.now().year;
  String labelFromDate = 'darmanet.please_select'.tr();
  String labelToDate = 'darmanet.please_select'.tr();
  TextStyle fromDateTextStyle = TextTypography.labelStyle;
  TextStyle toDateTextStyle = TextTypography.labelStyle;

  String? dropdownValue;
  String personId = "";
  late String nationalCode;
  Jalali? fromDatePicked;
  late String customerCompanyId;
  late String contractId;
  String contractNumber = '';
  Jalali? toDatePicked;
  String? CostDescriptionId;

  List titlesOfList = [
    ["darmanet.test".tr(), "a2ab10c0-a7e3-4068-b845-40337caaeb3f"],
    ["darmanet.emergency".tr(), "6799b73b-2af0-432c-aa24-3df418da8e6a"],
    ["darmanet.imaging".tr(), "5e0536a3-adfb-4320-b268-cfbce55d2022"],
    ["darmanet.medication".tr(), "4fc34ddb-2bbb-4ade-a362-8a03d66e170b"],
    ["darmanet.dentistry".tr(), "5613bad2-2318-448a-906a-6892dbef8779"],
    ["darmanet.other_paraclinical_damages".tr(), "f1661bce-8a3c-404c-8f33-531e7c1cef37"],
    ["darmanet.eyewear_and_medical_lenses".tr(), "e5cee743-7b95-49c6-8004-8849c2e58b00"],
    ["darmanet.physiotherapy".tr(), "5f728392-9943-4f2f-a146-3317c5b79a84"],
    ["darmanet.electronic_prescription_social_security".tr(), "c2b52241-480e-40f1-8ae6-f1d8a42b8d04"],
    ["darmanet.visit".tr(), "7d8a249c-223f-45b9-9b18-0c795f2041b9"],
  ];

  @override
  void initState() {
    loading = true;
    _getAllFamilyForAllContractBloc = sl<GetAllFamilyForAllContractBloc>();
    _getPersonFamilyListBloc = sl<GetPersonFamilyListBloc>();
    _getActiveByPersonBloc = sl<GetActiveByPersonBloc>();
    _getActiveByPersonBloc.add(const GetActiveByPersonEvent.getActiveByPersonEventCalled(
        param: GetActiveByPersonParam(personId: null, contractKindList: [0, 1, 3])));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();
    double height = MediaQuery.of(context).size.height;
    double width = ResponsiveLayout.getDeviceType(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => _getActiveByPersonBloc,
        ),
        BlocProvider(
          create: (context) => _getAllFamilyForAllContractBloc,
        ),
        BlocProvider(
          create: (context) => _getPersonFamilyListBloc,
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<GetActiveByPersonBloc, GetActiveByPersonState>(
            bloc: _getActiveByPersonBloc,
            listener: (context, state) {
              state.maybeWhen(
                loadFailure: (failure) {
                  if (failure.code == 401) {
                    showInfoWidget(
                      context,
                      "darmanet.no_supplementary_health_insurance".tr(),
                    );
                  } else {
                    showErrorWidget(context, failure.code, failure.message!);
                  }
                },
                loadSuccess: (getActiveByPersonEntities) {
                  contractsList = getActiveByPersonEntities.getActiveByPersonResponseData;
                  contractId = contractsList.first.id;
                  contractNumber = contractsList.first.contractNumber;
                  customerCompanyId = contractsList.first.customerCompanyId;
                  _getAllFamilyForAllContractBloc.add(
                    GetAllFamilyForAllContractEvent.getAllFamilyForAllContractCalled(
                      param: GetAllFamilyForAllContractParam(
                        contractId: contractId,
                        customerCompanyId: customerCompanyId,
                      ),
                    ),
                  );
                },
                orElse: () {},
              );
            },
          ),
          BlocListener<GetAllFamilyForAllContractBloc, GetAllFamilyForAllContractState>(
            bloc: _getAllFamilyForAllContractBloc,
            listener: (context, state) {
              state.maybeWhen(
                loadFailure: (failure) {},
                loadSuccess: (getAllFamilyForAllContractEntities) {
                  setState(() {
                    familyContractsList = getAllFamilyForAllContractEntities.getAllFamilyForAllContractResponseData;
                    loading = false;
                  });
                },
                orElse: () {},
              );
            },
          ),
        ],
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: colorTheme.bgInverse,
            elevation: 0,
            centerTitle: true,
            title: Text(
              'darmanet.damage_follow_up'.tr(),
              style: AppStyle.size18Weight700,
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    PageTransition(child: const DashboardScreen(), type: PageTransitionType.leftToRight),
                    (route) => false);
              },
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.arrow_back,
                  color: colorTheme.layer,
                ),
              ),
            ),
          ),
          body: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(
                  height: height * 0.02,
                ),
              ),
              SliverToBoxAdapter(
                child: Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: width * 0.9,
                    child: SimpleRoundedContainer(
                      width: width * 0.9,
                      height: height * 0.5,
                      bgColor: Colors.white,
                      borderRadius: width * 0.02,
                      borderColor: colorTheme.borders,
                      widget: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: height * 0.03,
                            ),
                            dropDown(
                              height: height * 0.15,
                              width: width * 0.9,
                              title: "darmanet.insured_name".tr(),
                            ),
                            SizedBox(
                              height: height * 0.03,
                            ),
                            costDescDropDown(
                              height: height * 0.15,
                              width: width * 0.9,
                              title: 'darmanet.cost_description'.tr(),
                            ),
                            SizedBox(
                              height: height * 0.03,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              alignment: Alignment.topRight,
                              child: Text(
                                'darmanet.cost_date'.tr(),
                                style: AppStyle.size13Weight400,
                              ),
                            ),
                            SizedBox(
                              width: width * 0.8,
                              height: height * 0.1,
                              // color: Colors.yellow,
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.only(end: 8.0),
                                    child: Text(
                                      'darmanet.from'.tr(),
                                      style: AppStyle.size13Weight400,
                                    ),
                                  ),
                                  SimpleRoundedContainer(
                                    width: width * 0.3,
                                    height: height * 0.06,
                                    bgColor: colorTheme.layer,
                                    borderRadius: width * 0.01,
                                    borderColor: colorTheme.borders,
                                    widget: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(labelFromDate, style: fromDateTextStyle),
                                          Image(
                                            width: 20,
                                            image: const AssetImage("assets/images/calendar.png"),
                                            color: colorTheme.black,
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
                                    padding: const EdgeInsetsDirectional.only(end: 8.0),
                                    child: Text(
                                      'darmanet.to'.tr(),
                                      style: AppStyle.size13Weight400,
                                    ),
                                  ),
                                  SimpleRoundedContainer(
                                    width: width * 0.3,
                                    height: height * 0.06,
                                    bgColor: colorTheme.layer,
                                    borderRadius: width * 0.01,
                                    borderColor: colorTheme.borders,
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

                                        // finalFromPickedDate =
                                        //     ConvertDate()
                                        //         .convertJalaliToGregorian(
                                        //         fromDatePicked!.year
                                        //             .toString(),
                                        //         fromDatePicked!.month
                                        //             .toString(),
                                        //         fromDatePicked!.day
                                        //             .toString()) ;
                                      }
                                    },
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),

                            ///search
                            BlocBuilder<GetPersonFamilyListBloc, GetPersonFamilyListState>(
                                bloc: _getPersonFamilyListBloc,
                                builder: (context, state) {
                                  final loading = state is GetPersonFamilyListStateLoading;

                                  return ButtonPrimary(
                                    title: "darmanet.search_in_costs".tr(),
                                    icon: Icons.search,
                                    buttonLoading: loading,
                                    customWidth: width * 0.8,
                                    customHeight: 48,
                                    style: AppStyle.size14Weight600White,
                                    onPressed: () {
                                      final Box box = Hive.box(Strings.appDBName);
                                      nationalCode = box.get("nationalId");
                                      _getPersonFamilyListBloc.add(
                                          GetPersonFamilyListEvent.getGetPersonFamilyListEventCalled(
                                              param: GetPersonFamilyListParam(
                                                  AgainstEnvelopeState: "4",
                                                  PersonId: personId,
                                                  CostDescriptionId: CostDescriptionId ?? "",
                                                  MainNationalCode: nationalCode,
                                                  FromCostDate: fromDatePicked != null
                                                      ? ConvertDate().convertJalaliToGregorianString(
                                                          fromDatePicked!.year.toString(),
                                                          fromDatePicked!.month.toString(),
                                                          fromDatePicked!.day.toString())
                                                      : "",
                                                  ToCostDate: toDatePicked != null
                                                      ? ConvertDate().convertJalaliToGregorianString(
                                                          toDatePicked!.year.toString(),
                                                          toDatePicked!.month.toString(),
                                                          toDatePicked!.day.toString())
                                                      : "")));
                                    },
                                  );
                                }),

                            SizedBox(
                              height: height * 0.01,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              BlocConsumer<GetPersonFamilyListBloc, GetPersonFamilyListState>(
                bloc: _getPersonFamilyListBloc,
                listener: (context, state) {
                  state.maybeWhen(
                      loadSuccess: (entities) {
                        setState(() {
                          familyRecordsList = entities.familyRecords;
                        });
                      },
                      orElse: () {});
                },
                builder: (context, state) {
                  return SliverList(
                    delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
                      return Center(
                        child: SimpleFooterRoundedContainer(
                          width: width * 0.9,
                          height: height * 0.25,
                          bgColor: Colors.red,
                          borderRadius: 8.0,
                          borderColor: colorTheme.borders,
                          headerBgColor: colorTheme.successContainer,
                          headerBorderColor: colorTheme.success,
                          headerBorderRadius: width * 0.2,
                          topPosition: width * 0.05,
                          leftPosition: width * 0.05,
                          widthPositionContainer: width * 0.5,
                          heightPositionContainer: width * 0.10,
                          topPositionMain: width * 0.1,
                          widthMain: width * 0.9,
                          heightMain: height * 0.2,
                          mainBorderColor: colorTheme.borders,
                          mainBorderRadius: width * 0.02,
                          onTap: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: ClaimFollowupDetailScreen(
                                        contractNumber: contractNumber,
                                        familyRecord: familyRecordsList[index],
                                        costItemId: familyRecordsList[index].id.toString()),
                                    type: PageTransitionType.leftToRight));
                          },
                          mainWidget: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.2,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 9.0,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  DataRowWidget(
                                      caption: "darmanet.patient_name".tr(),
                                      title: familyRecordsList[index].personName != null
                                          ? familyRecordsList[index].personName.toString().toPersianDigit()
                                          : 'darmanet.unknown'.tr()),
                                  DataRowWidget(
                                    title: familyRecordsList[index].envelopeIndex != null
                                        ? familyRecordsList[index].envelopeIndex.toString().toPersianDigit()
                                        : 'darmanet.unknown'.tr(),
                                    caption: "darmanet.file_code".tr(),
                                  ),
                                  DataRowWidget(
                                    title: familyRecordsList[index].costDate != null
                                        ? ConvertDate()
                                            .convertGregorianToJalali(familyRecordsList[index].costDate.toString())
                                        : 'darmanet.unknown'.tr(),
                                    caption: "darmanet.cost_date".tr(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          headerWidget: Center(
                            child: Text(
                              familyRecordsList[index].costStringDescription != null
                                  ? familyRecordsList[index].costStringDescription.toString()
                                  : 'darmanet.unknown'.tr(),
                              style: AppStyle.size10Weight600Green,
                            ),
                          ),
                        ),
                      );
                    }, childCount: familyRecordsList.length),
                  );
                },
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: height * 0.01,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget dropDown({
    required double height,
    required double width,
    required String title,
  }) {
    final colorTheme = context.colorTheme<CustomTheme>();
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
          child: loading
              ? Container(
                  height: height * 0.3,
                  width: width * 0.4,
                  decoration: BoxDecoration(
                    color: colorTheme.layer,
                    border: Border.all(color: colorTheme.borders),
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                  ),
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(5),
                  child: const CircularProgressIndicator(),
                )
              : DropdownButtonFormField(
                  value: dropdownValue,
                  validator: (value) => value == null ? "darmanet.please_select_insured_name".tr() : null,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  style: TextTypography.labelLarge.copyWith(color: colorTheme.textVariant , fontSize: 12),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: colorTheme.layer,
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
                        color: colorTheme.borders,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: colorTheme.borders,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: colorTheme.borders,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: colorTheme.borders,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                    ),
                    errorStyle: TextStyle(
                      fontFamily: "Pelak",
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: colorTheme.error,
                    ),
                    hintText: "darmanet.please_select".tr(),
                    hintStyle:  TextTypography.labelMedium
                        .copyWith(color: colorTheme.colorTextQuaternary , fontWeight: FontWeight.w400)
                  ),
                  items: familyContractsList
                      .map(
                        (value) => DropdownMenuItem(
                          value: value,
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: Text(
                              value.text,
                              textDirection: TextDirection.ltr,
                              style: AppStyle.size12Weight600.copyWith(color: Colors.black),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      value as GetAllFamilyForAllContractResponseData;
                      personId = value.value;
                    });
                  },
                ),
        ),
      ],
    );
  }

  Widget costDescDropDown({
    required double height,
    required double width,
    required String title,
  }) {
    final colorTheme = context.colorTheme<CustomTheme>();
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
            // validator: (value) =>
            //     value == null ? "لطفانام بیمه شده را انتخاب نمایید" : null,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            style: TextTypography.labelLarge.copyWith(color: colorTheme.textVariant , fontSize: 12),
            decoration: InputDecoration(
              filled: true,
              fillColor: colorTheme.layer,
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
                  color: colorTheme.borders,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(5)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: colorTheme.borders,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(5)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: colorTheme.borders,
                ),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: colorTheme.borders,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(5)),
              ),
              errorStyle: TextStyle(
                fontFamily: "Pelak",
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: colorTheme.error,
              ),
              hintText: "darmanet.please_select".tr(),
              hintStyle: TextTypography.labelMedium
                  .copyWith(color: colorTheme.colorTextQuaternary , fontWeight: FontWeight.w400)
            ),
            items: titlesOfList
                .map((value) => DropdownMenuItem(
                      value: value,
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          value.first.toString(),
                          textDirection: TextDirection.ltr,
                          style: AppStyle.size12Weight600.copyWith(color: Colors.black),
                        ),
                      ),
                    ))
                .toList(),
            onChanged: (value) {
              value as List;

              // print(value[1]);
              // titlesOfList
              setState(() {
                CostDescriptionId = value[1];
              });
            },
          ),
        ),
      ],
    );
  }
}
