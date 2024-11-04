import 'dart:io';
import 'package:ios_samx/core/constant/strings.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/extensions/parse_int_extension.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/core/utils/download_blob_file.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:ios_samx/core/widgets/button_primary.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/presentation/bloc/send_envelope/send_envelop_bloc.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/entities/get_all_clinic/get_all_clinic_response_data/get_all_clinic_response_data.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/entities/get_cities/get_citites_response_data/get_cities_response_data.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/usecase/get_all_clinic/param/get_all_clinic_param.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/usecase/get_cities/param/get_cities_param.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/presentation/bloc/get_all_clinic/get_all_clinic_bloc.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/presentation/bloc/get_cities/get_cities_bloc.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/presentation/widgets/introduction_file_picker.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/entities/get_active_by_person_for_voucher/get_active_by_person_for_voucher_response_data/get_active_by_person_for_voucher_response_data.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/entities/get_all_family_by_main_national_code/response_data/get_family_by_main_national_code_response_data.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/get_active_by_person_for_voucher/param/get_active_by_person_for_voucher_param.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/get_all_family_by_main_national_code/param/get_all_family_by_main_national_code_param.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/send_to_next_level/param/send_to_next_level_param.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/voucher_download/param/voucher_download_param.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/voucher_request_get_by_id/param/voucher_request_get_by_id_param.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/presentation/blocs/get_active_by_person_for_voucher/get_active_by_person_for_voucher_bloc.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/presentation/blocs/get_all_family_by_main_national_code/get_all_family_by_main_national_code_bloc.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/presentation/blocs/send_to_next_level/send_to_next_level_bloc.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/presentation/blocs/voucher_download/voucher_download_bloc.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/presentation/blocs/voucher_request_get_by_id/voucher_request_get_by_id_bloc.dart';
import 'package:ios_samx/feature/main_app/dashboard/presentation/pages/dashboard_screen.dart';
import 'package:ios_samx/injection_container.dart';

import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:page_transition/page_transition.dart';
import 'package:path_provider/path_provider.dart';
import '../../../../../core/base_widget/app_top_app_bar/app_top_app_bar.dart';
import '../../../../../core/constant/app_style.dart';
import '../../../../../core/constant/theme/custom_theme.dart';
import '../../../../../core/widgets/text_form_field.dart';

class IntroductionFollowUpRequestDetailScreen extends StatefulWidget {
  final String voucherId;
  final bool enable;

  const IntroductionFollowUpRequestDetailScreen({super.key, required this.voucherId, required this.enable});

  @override
  State<IntroductionFollowUpRequestDetailScreen> createState() => _IntroductionFollowUpRequestDetailScreenState();
}

class _IntroductionFollowUpRequestDetailScreenState extends State<IntroductionFollowUpRequestDetailScreen> {
  String? dropdownValue;
  GetCitiesResponseData? dropdownValueCities;
  List? dropdownValueIntroduction;
  GetFamilyByMainNationalCodeResponseData? dropdownValueInsurer;

  GetAllClinicCitiesResponseData? dropdownClinic;
  TextEditingController introductionNumber = TextEditingController();
  TextEditingController introductionName = TextEditingController(
    text: "darmanet.saman_insurance".tr(),
  );

  TextEditingController phoneNumber = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  late VoucherRequestGetByIdBloc _voucherRequestGetByIdBloc;
  late GetAllFamilyByMainNationalCodeBloc _getAllFamilyByMainNationalCodeBloc;
  late GetActiveByPersonForVoucherBloc _getActiveByPersonForVoucherBloc;
  late GetCitiesBloc _getCitiesBloc;
  late GetAllClinicBloc _getAllClinicBloc;
  late SendToNextLevelBloc _sendToNextLevelBloc;
  late VoucherDownloadBloc _voucherDownloadBloc;

  bool loadingVoucherRequest = true;
  bool loadingGetCities = true;
  bool loadingGetActiveByPerson = true;
  bool loadingGetAllClinic = true;
  bool loadingGetAllFamilyForAllContract = true;
  bool loadingVoucherDownload = false;

  List introductionsList = [
    ["darmanet.hospitalization", "1"],
    ["darmanet.dentistry", "2"],
    ["darmanet.paraclinical", "3"],
    ["darmanet.medicinal", "4"],
    ["darmanet.emergency", "5"]
  ];

  List<GetCitiesResponseData> getCities = [];
  List<GetActiveByPersonForVoucherResponseData> contractList = [];
  List<GetFamilyByMainNationalCodeResponseData> insurerList = [];
  List<GetAllClinicCitiesResponseData> getClinicList = [];

  late File file;
  String fileName = "";

  String customerCompanyId = "";
  String contractId = "";

  String personId = "";
  String personName = "";

  String cityId = "";
  String? cityName = "";

  String clinicId = "";
  String clinicName = "";

  String textClinicId = "";
  String insuranceCompanyId = "";

  String voucherType = "";
  String voucherName = "";
  String voucherNumber = "";

  String fileId = "";
  String nationalCode = "";

  @override
  void initState() {
    Box box = Hive.box(Strings.appDBName);
    nationalCode = box.get(Strings.nationalId);
    _getAllFamilyByMainNationalCodeBloc = sl<GetAllFamilyByMainNationalCodeBloc>();
    _getActiveByPersonForVoucherBloc = sl<GetActiveByPersonForVoucherBloc>();
    _getCitiesBloc = sl<GetCitiesBloc>();
    _getAllClinicBloc = sl<GetAllClinicBloc>();
    _voucherRequestGetByIdBloc = sl<VoucherRequestGetByIdBloc>();
    _sendToNextLevelBloc = sl<SendToNextLevelBloc>();
    _voucherDownloadBloc = sl<VoucherDownloadBloc>();

    _voucherRequestGetByIdBloc.add(VoucherRequestGetByIdEvent.voucherRequestGetByIdEventCalled(
        param: VoucherRequestGetByIdParam(id: widget.voucherId)));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = ResponsiveLayout.getDeviceType(context);
    final colorTheme = context.colorTheme<CustomTheme>();

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => _getCitiesBloc,
        ),
        BlocProvider(
          create: (context) => _getActiveByPersonForVoucherBloc,
        ),
        BlocProvider(
          create: (context) => _getAllClinicBloc,
        ),
        BlocProvider(
          create: (context) => _getAllFamilyByMainNationalCodeBloc,
        ),
        BlocProvider(
          create: (context) => _sendToNextLevelBloc,
        ),
        BlocProvider(
          create: (context) => _voucherDownloadBloc,
        )
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<VoucherRequestGetByIdBloc, VoucherRequestGetByIdState>(
            bloc: _voucherRequestGetByIdBloc,
            listener: (context, state) {
              state.maybeWhen(
                loadFailure: (failure) {
                  showErrorWidget(context, failure.code, failure.message!);
                  setState(() {
                    loadingVoucherRequest = false;
                  });
                },
                loadSuccess: (entities) {
                  setState(() {
                    loadingVoucherRequest = false;
                    cityName = entities.clinicCityName ?? "darmanet.select_text".tr();
                    clinicName = entities.clinicName ?? "darmanet.select_text".tr();
                    voucherName = entities.typeDesc ?? "darmanet.select_text".tr();
                    personName = entities.personName ?? "darmanet.select_text".tr();
                    voucherNumber = entities.voucherNumber ?? "";
                    fileId = entities.fileId!;
                    introductionNumber.text = entities.code.toString();
                    phoneNumber.text = entities.phone!;
                    if (!kIsWeb) {
                      _voucherDownloadBloc
                          .add(VoucherDownloadEvent.voucherDownloadEvent(param: VoucherDownloadParam(id: fileId)));
                    }
                    _getActiveByPersonForVoucherBloc.add(
                        GetActiveByPersonForVoucherEvent.getActiveByPersonForVoucherEvent(
                            param: GetActiveByPersonForVoucherParam(
                                contractKindList: const [0, 3], mainPersonNationalCode: nationalCode)));
                  });
                },
                orElse: () {},
              );
            },
          ),
          BlocListener<GetCitiesBloc, GetCitiesState>(
            bloc: _getCitiesBloc,
            listener: (context, state) {
              state.maybeWhen(
                loadFailure: (failure) {
                  showErrorWidget(context, failure.code, failure.message!);
                  setState(() {
                    loadingGetCities = false;
                  });
                },
                loadSuccess: (getCitiesEntities) {
                  setState(() {
                    getCities = getCitiesEntities.getCitiesResponseData;

                    loadingGetCities = false;
                  });
                },
                orElse: () {},
              );
            },
          ),
          BlocListener<GetAllFamilyByMainNationalCodeBloc, GetAllFamilyByMainNationalCodeState>(
              bloc: _getAllFamilyByMainNationalCodeBloc,
              listener: (context, state) {
                state.maybeWhen(
                  loadFailure: (failure) {
                    showErrorWidget(context, failure.code, failure.message!);
                    setState(() {
                      loadingGetAllFamilyForAllContract = false;
                    });
                  },
                  loadSuccess: (entities) {
                    setState(() {
                      insurerList = entities.getFamilyByMainNationalCodeResponseData;
                      personId = entities.getFamilyByMainNationalCodeResponseData[0].value;
                      _getCitiesBloc.add(
                        const GetCitiesEvent.getCitiesEventCalled(
                          param: GetCitiesParam(limit: 1000, offset: 0),
                        ),
                      );
                      loadingGetAllFamilyForAllContract = false;
                    });
                  },
                  orElse: () {},
                );
              }),
          BlocListener<GetActiveByPersonForVoucherBloc, GetActiveByPersonForVoucherState>(
            bloc: _getActiveByPersonForVoucherBloc,
            listener: (context, state) {
              state.maybeWhen(
                loadFailure: (failure) {
                  setState(() {
                    loadingGetActiveByPerson = false;
                  });
                  showErrorWidget(context, failure.code, failure.message!);
                },
                loadSuccess: (entities) {
                  setState(() {
                    contractList = entities.getActiveByPersonForVoucherResponseData;
                    customerCompanyId = entities.getActiveByPersonForVoucherResponseData[0].customerCompanyId;

                    if (widget.enable) {
                      _getAllFamilyByMainNationalCodeBloc.add(
                        GetAllFamilyByMainNationalCodeEvent.getAllFamilyByMainNationalCodeEventCalled(
                          param:
                              GetAllFamilyByMainNationalCodeParam(limit: 15, offset: 0, mainNationalCode: nationalCode),
                        ),
                      );
                    } else {
                      setState(() {
                        loadingGetCities = false;
                        loadingGetAllFamilyForAllContract = false;
                      });
                    }
                    loadingGetActiveByPerson = false;
                  });
                },
                orElse: () {},
              );
            },
          ),
          BlocListener<GetAllClinicBloc, GetAllClinicState>(
              bloc: _getAllClinicBloc,
              listener: (context, state) {
                state.maybeWhen(
                  loadFailure: (failure) {
                    showErrorWidget(context, failure.code, failure.message!);
                  },
                  loadSuccess: (getAllClinicEntities) {
                    setState(() {
                      getClinicList = getAllClinicEntities.getAliiClinicResponseData;
                      loadingGetAllClinic = false;
                    });
                  },
                  orElse: () {},
                );
              }),
          BlocListener<VoucherDownloadBloc, VoucherDownloadState>(
              bloc: _voucherDownloadBloc,
              listener: ((context, state) {
                state.maybeWhen(
                  loadFailure: (failure) {
                    showErrorWidget(context, failure.code, failure.message!);
                  },
                  loadSuccess: (voucherDownloadEntities) async {
                    try {
                      if (kIsWeb) {
                        // downloadBlobFile(voucherDownloadEntities.dioResponse.data, voucherDownloadEntities.contentDisposition);
                      } else {
                        Directory appDocDir = await getApplicationDocumentsDirectory();
                        String appDocPath = appDocDir.path;
                        String filePath = '$appDocPath/${voucherDownloadEntities.contentDisposition}';
                        print('File saved at: $filePath');
                        setState(() {
                          file = voucherDownloadEntities.dioResponse.data;
                          fileName = voucherDownloadEntities.contentDisposition;
                        });
                      }
                    } catch (e) {}
                  },
                  orElse: () {},
                );
              }))
        ],
        child: Directionality(
            textDirection: TextDirection.rtl,
            child: Scaffold(
              backgroundColor: Colors.white,
              appBar: AppTopAppBar(
                title: 'darmanet.referral_letter_request'.tr(),
                isQrCode: false,
              ),
              // appBar: AppBar(
              //   backgroundColor: colorTheme.bgInverse,
              //   elevation: 0,
              //   centerTitle: true,
              //   title: Text(
              //     'darmanet.referral_letter_request'.tr(),
              //     style: AppStyle.size18Weight700,
              //   ),
              //   leading: IconButton(
              //     onPressed: () {
              //       Navigator.pop(context);
              //     },
              //     icon: Padding(
              //       padding: EdgeInsets.all(8.0),
              //       child: Icon(
              //         Icons.arrow_back,
              //         color: colorTheme.infoContainer,
              //       ),
              //     ),
              //   ),
              // ),
              body: loadingVoucherRequest ||
                      loadingGetCities ||
                      loadingGetActiveByPerson ||
                      loadingGetAllFamilyForAllContract
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : Form(
                      key: _formKey,
                      child: SingleChildScrollView(
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            width: width * 0.9,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                CustomTextFormField(
                                  fillColor: colorTheme.borders,
                                  controller: introductionName,
                                  errorMessage: '',
                                  customWidth: width * 0.9,
                                  keyboardType: TextInputType.number,
                                  enable: false,
                                  title: "darmanet.insurer_name".tr(),
                                ),
                                SizedBox(
                                  height: height * 0.03,
                                ),
                                CustomTextFormField(
                                  fillColor: colorTheme.borders,
                                  controller: introductionNumber,
                                  errorMessage: '',
                                  customWidth: width * 0.9,
                                  keyboardType: TextInputType.number,
                                  title: "darmanet.referral_number".tr(),
                                  enable: false,
                                ),
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                dropDownGetCities(
                                    height: height * 0.15,
                                    width: double.infinity,
                                    title: 'darmanet.city'.tr(),
                                    enable: widget.enable),
                                SizedBox(
                                  height: height * 0.03,
                                ),
                                dropDownIntroduction(
                                  height: height * 0.15,
                                  width: double.infinity,
                                  title: 'darmanet.introduction_type'.tr(),
                                  enable: widget.enable,
                                ),
                                SizedBox(
                                  height: height * 0.03,
                                ),
                                dropDownInsurer(
                                  height: height * 0.15,
                                  width: double.infinity,
                                  title: 'darmanet.patient_name_title'.tr(),
                                  enable: widget.enable,
                                ),
                                SizedBox(
                                  height: height * 0.03,
                                ),
                                CustomTextFormField(
                                  maxLength: 11,
                                  fillColor: colorTheme.infoContainer,
                                  controller: phoneNumber,
                                  errorMessage: '',
                                  customWidth: width * 0.9,
                                  enableBorder: OutlineInputBorder(
                                    borderSide: BorderSide(width: 1, color: colorTheme.solid),
                                  ),
                                  keyboardType: TextInputType.phone,
                                  title: 'darmanet.mobile_number'.tr(),
                                  enable: widget.enable,
                                ),
                                SizedBox(
                                  height: height * 0.03,
                                ),
                                dropDownClinicList(
                                  height: height * 0.15,
                                  width: double.infinity,
                                  title: 'darmanet.clinic_name'.tr(),
                                  enable: widget.enable,
                                ),
                                SizedBox(
                                  height: height * 0.03,
                                ),
                                dropDownContractList(
                                  height: height * 0.15,
                                  width: double.infinity,
                                  title: 'darmanet.contract'.tr(),
                                  enable: widget.enable,
                                ),
                                SizedBox(
                                  height: height * 0.03,
                                ),
                                kIsWeb
                                    ? BlocBuilder<VoucherDownloadBloc, VoucherDownloadState>(
                                        bloc: _voucherDownloadBloc,
                                        builder: (context, state) {
                                          final bool loading = state is VoucherDownloadStateLoading;
                                          return IntroductionFilePickerWidget(
                                            widthA: width * 1,
                                            heightA: height * 0.08,
                                            loading: loading,
                                            buttonTitle: "darmanet.download_file".tr(),
                                            caption: fileName.isEmpty ? 'darmanet.doctor_order'.tr() : fileName,
                                            iconName: fileName.isEmpty
                                                ? "assets/images/document_cloud.png"
                                                : "assets/images/document_download.png",
                                            onTap: () async {
                                              _voucherDownloadBloc.add(VoucherDownloadEvent.voucherDownloadEvent(
                                                  param: VoucherDownloadParam(id: fileId)));
                                            },
                                          );
                                        },
                                      )
                                    : Container(),
                                fileName.isNotEmpty
                                    ? Container(
                                        alignment: Alignment.topRight,
                                        padding: const EdgeInsets.only(right: 20),
                                        child: Text(
                                          'darmanet.uploaded_files'.tr(),
                                          style: AppStyle.size13Weight600,
                                        ),
                                      )
                                    : Container(),
                                fileName.isNotEmpty
                                    ? SizedBox(height: height * 0.2, child: Image.file(file))
                                    : Container(),
                                widget.enable
                                    ? BlocConsumer<SendToNextLevelBloc, SendToNextLevelState>(
                                        bloc: _sendToNextLevelBloc,
                                        listener: (context, state) {
                                          state.maybeWhen(
                                            loadFailure: (failure) {
                                              showErrorWidget(context, failure.code, failure.message!);
                                            },
                                            loadSuccess: (entities) {
                                              if (entities.succeed == false) {
                                                showErrorWidget(context, 101, entities.errorMessage);
                                              } else {
                                                showSuccessWidget(context, entities.errorMessage, () {
                                                  Navigator.push(
                                                    context,
                                                    PageTransition(
                                                        child: const DashboardScreen(),
                                                        type: PageTransitionType.leftToRight),
                                                  );
                                                });
                                              }
                                            },
                                            orElse: () {},
                                          );
                                        },
                                        builder: (context, state) {
                                          final loading = state is SendEnvelopeStateLoading;
                                          return Padding(
                                            padding: const EdgeInsets.only(bottom: 16.0),
                                            child: ButtonPrimary(
                                              title: 'darmanet.confirm_edit'.tr(),
                                              buttonLoading: loading,
                                              customWidth: width * 0.9,
                                              customHeight: height * 0.07,
                                              style: AppStyle.size14Weight600White,
                                              onPressed: () {
                                                _sendToNextLevelBloc.add(
                                                  SendToNextLevelEvent.sendToNextLevelEvent(
                                                    param: SendToNextLevelParam(
                                                      id: widget.voucherId,
                                                      state: 0,
                                                      voucherNumber: voucherNumber,
                                                      code: introductionNumber.text,
                                                      customerCompanyId: customerCompanyId,
                                                      submitType: "1",
                                                      personId: personId,
                                                      type: voucherType,
                                                      contractId: contractId,
                                                      phone: phoneNumber.text,
                                                      fileId: fileId,
                                                      attachmentFileId: "",
                                                      cityId: cityId,
                                                      clinicId: clinicId,
                                                    ),
                                                  ),
                                                );
                                              },
                                            ),
                                          );
                                        },
                                      )
                                    : Container(),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
            )),
      ),
    );
  }

  Future<String> createObjectUrlFromBlob(Uint8List blobData, String fileName) async {
    try {
      // Get the temporary directory
      Directory tempDir = await getTemporaryDirectory();

      // Create a temporary file
      File tempFile = File('${tempDir.path}/$fileName');
      await tempFile.writeAsBytes(blobData);

      // Generate object URL
      String objectUrl = tempFile.uri.toString();

      return objectUrl;
    } catch (e) {
      print('Error creating object URL: $e');
      return "";
    }
  }

  Column dropDownGetCities({
    required double height,
    required double width,
    required String title,
    required bool enable,
  }) {
    final colorTheme = context.colorTheme<CustomTheme>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 4.0),
          child: Text(
            title,
            style: AppStyle.size12Weight600darkGray,
          ),
        ),
        SizedBox(
          width: width,
          child: DropdownButtonFormField(
            value: dropdownValue,
            menuMaxHeight: height * 2,
            hint: Text(
              cityName!,
              style: AppStyle.size12Weight300.copyWith(color: Colors.black),
            ),
            validator: (value) => value == null ? "darmanet.select_text".tr() : null,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            style: AppStyle.size12Weight300.copyWith(color: Colors.black),
            decoration: InputDecoration(
              filled: true,
              fillColor: colorTheme.infoContainer,
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
              hintText: "darmanet.please_select".tr(),
              hintStyle: TextStyle(
                fontFamily: "Pelak",
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: colorTheme.textVariant,
              ),
            ),
            items: getCities
                .map(
                  (value) => DropdownMenuItem(
                    value: value,
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        value.text,
                        textDirection: TextDirection.ltr,
                        style: AppStyle.size12Weight300.copyWith(color: Colors.black),
                      ),
                    ),
                  ),
                )
                .toList(),
            onChanged: enable
                ? (value) {
                    setState(() {
                      value as GetCitiesResponseData;
                      cityId = value.value;
                      if (voucherType.isNotEmpty) {
                        clinicId = "";
                        _getAllClinicBloc.add(
                          GetAllClinicEvent.getAllClinicEventCalled(
                            param: GetAllClinicParam(
                              deactive: 0,
                              checkContractDate: true,
                              excludeSnapp: true,
                              offset: 0,
                              limit: 1000,
                              cityId: cityId,
                              voucherType: voucherType.parseInt(),
                            ),
                          ),
                        );
                      }
                    });
                  }
                : null,
          ),
        ),
      ],
    );
  }

  Column dropDownIntroduction({
    required double height,
    required double width,
    required String title,
    required bool enable,
  }) {
    final colorTheme = context.colorTheme<CustomTheme>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 4.0),
          child: Text(
            title,
            style: AppStyle.size12Weight600darkGray,
          ),
        ),
        SizedBox(
          width: width,
          child: DropdownButtonFormField(
            value: dropdownValue,
            menuMaxHeight: height * 2,
            hint: Text(
              voucherName,
              style: AppStyle.size12Weight300.copyWith(color: Colors.black),
            ),
            validator: (value) => value == null ? "darmanet.select_text".tr() : null,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            style: AppStyle.size12Weight300.copyWith(color: Colors.black),
            decoration: InputDecoration(
              filled: true,
              fillColor: colorTheme.textInverse,
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
              hintText: "darmanet.please_select".tr(),
              hintStyle: TextStyle(
                fontFamily: "Pelak",
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: colorTheme.textVariant,
              ),
            ),
            items: introductionsList
                .map(
                  (value) => DropdownMenuItem(
                    value: value,
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        value[0],
                        textDirection: TextDirection.ltr,
                        style: AppStyle.size12Weight300.copyWith(color: Colors.black),
                      ).tr(),
                    ),
                  ),
                )
                .toList(),
            onChanged: enable
                ? (value) {
                    setState(() {
                      value as List;
                      voucherType = value[1];
                      if (cityId.isNotEmpty) {
                        clinicId = "";
                        _getAllClinicBloc.add(
                          GetAllClinicEvent.getAllClinicEventCalled(
                            param: GetAllClinicParam(
                              deactive: 0,
                              checkContractDate: true,
                              excludeSnapp: true,
                              offset: 0,
                              limit: 1000,
                              cityId: cityId,
                              voucherType: voucherType.parseInt(),
                            ),
                          ),
                        );
                      }
                    });
                  }
                : null,
          ),
        ),
      ],
    );
  }

  Column dropDownInsurer({
    required double height,
    required double width,
    required String title,
    required bool enable,
  }) {
    final colorTheme = context.colorTheme<CustomTheme>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 4.0),
          child: Text(
            title,
            style: AppStyle.size12Weight600darkGray,
          ),
        ),
        SizedBox(
          width: width,
          child: DropdownButtonFormField(
            value: dropdownValue,
            menuMaxHeight: height * 2,
            hint: Text(
              personName,
              style: AppStyle.size12Weight300.copyWith(color: Colors.black),
            ),
            validator: (value) => value == null ? "darmanet.select_text".tr() : null,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            style: AppStyle.size12Weight300.copyWith(color: Colors.black),
            decoration: InputDecoration(
              filled: true,
              fillColor: colorTheme.textInverse,
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
              hintText: "darmanet.please_select".tr(),
              hintStyle: TextStyle(
                fontFamily: "Pelak",
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: colorTheme.textVariant,
              ),
            ),
            items: insurerList
                .map(
                  (value) => DropdownMenuItem(
                    value: value,
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        value.text,
                        textDirection: TextDirection.ltr,
                        style: AppStyle.size12Weight300.copyWith(color: Colors.black),
                      ),
                    ),
                  ),
                )
                .toList(),
            onChanged: enable
                ? (value) {
                    setState(() {
                      value as GetFamilyByMainNationalCodeResponseData;
                      personId = value.value;
                    });
                  }
                : null,
          ),
        ),
      ],
    );
  }

  Column dropDownContractList({
    required double height,
    required double width,
    required String title,
    required bool enable,
  }) {
    final colorTheme = context.colorTheme<CustomTheme>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 4.0),
          child: Text(
            title,
            style: AppStyle.size12Weight600darkGray,
          ),
        ),
        SizedBox(
          width: width,
          child: DropdownButtonFormField(
            value: dropdownValue,
            menuMaxHeight: height * 2,
            validator: (value) => value == null ? "darmanet.select_text".tr() : null,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            style: AppStyle.size12Weight300.copyWith(color: Colors.black),
            decoration: InputDecoration(
              filled: true,
              fillColor: colorTheme.textInverse,
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
              hintText: "darmanet.please_select".tr(),
              hintStyle: TextStyle(
                fontFamily: "Pelak",
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: colorTheme.textVariant,
              ),
            ),
            items: contractList
                .map(
                  (value) => DropdownMenuItem(
                    value: value,
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        value.contractNumberWithCustomer,
                        textDirection: TextDirection.ltr,
                        style: AppStyle.size12Weight300.copyWith(color: Colors.black),
                      ),
                    ),
                  ),
                )
                .toList(),
            onChanged: enable
                ? (value) {
                    setState(() {
                      value as GetActiveByPersonForVoucherResponseData;
                      contractId = value.id;
                      insuranceCompanyId = value.insuranceCompanyId;
                    });
                  }
                : null,
          ),
        ),
      ],
    );
  }

  Column dropDownClinicList({
    required double height,
    required double width,
    required String title,
    required bool enable,
  }) {
    final colorTheme = context.colorTheme<CustomTheme>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 4.0),
          child: Text(
            title,
            style: AppStyle.size12Weight600darkGray,
          ),
        ),
        SizedBox(
          width: width,
          child: BlocBuilder<GetAllClinicBloc, GetAllClinicState>(
            bloc: _getAllClinicBloc,
            builder: (context, state) {
              final bool loading = state is GetAllClinicStateLoading;
              return DropdownButtonFormField(
                value: dropdownClinic,
                menuMaxHeight: height * 2,
                hint: loading
                    ? const Align(alignment: Alignment.center, child: CircularProgressIndicator())
                    : Text(
                        clinicName.isEmpty ? "darmanet.please_select".tr() : clinicName,
                        style: AppStyle.size12Weight300,
                      ),
                validator: (value) => value == null ? "darmanet.select_text".tr() : null,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                style: AppStyle.size12Weight300.copyWith(color: Colors.black),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: colorTheme.solid,
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
                  hintText: "darmanet.select_text".tr(),
                  hintStyle: TextStyle(
                    fontFamily: "Pelak",
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: colorTheme.textVariant,
                  ),
                ),
                items: getClinicList
                    .map(
                      (value) => DropdownMenuItem(
                        value: value.value,
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Text(
                            value.text,
                            textDirection: TextDirection.ltr,
                            style: AppStyle.size12Weight300.copyWith(color: Colors.black),
                          ),
                        ),
                      ),
                    )
                    .toList(),
                onChanged: enable
                    ? (value) {
                        setState(() {
                          clinicId = value.toString();
                        });
                      }
                    : null,
              );
            },
          ),
        ),
      ],
    );
  }
}
