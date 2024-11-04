import 'dart:io';

import 'package:ios_samx/core/constant/strings.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/extensions/parse_int_extension.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/get_all_family_for_all_contract/get_all_family_for_all_contract_response_data/get_all_family_for_all_contract_response_data.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/get_all_family_for_all_contract/param/get_all_family_for_all_contract_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/upload/param/upload_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/presentation/bloc/get_all_family_for_all_contract/get_all_family_for_all_contract_bloc.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/presentation/bloc/upload/upload_bloc.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/entities/get_all_clinic/get_all_clinic_response_data/get_all_clinic_response_data.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/usecase/get_all_clinic/param/get_all_clinic_param.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/usecase/get_cities/param/get_cities_param.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/usecase/person_voucher_create/param/person_voucher_create_param.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/presentation/bloc/get_all_clinic/get_all_clinic_bloc.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/presentation/bloc/get_cities/get_cities_bloc.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/presentation/bloc/get_last_voucher_number/get_last_voucher_number_bloc.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/presentation/bloc/person_voucher_create/person_voucher_create_bloc.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/entities/get_active_by_person_for_voucher/get_active_by_person_for_voucher_response_data/get_active_by_person_for_voucher_response_data.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/get_active_by_person_for_voucher/param/get_active_by_person_for_voucher_param.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/presentation/blocs/get_active_by_person_for_voucher/get_active_by_person_for_voucher_bloc.dart';
import 'package:ios_samx/feature/main_app/dashboard/presentation/pages/dashboard_screen.dart';
import 'package:ios_samx/injection_container.dart';
import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:page_transition/page_transition.dart';
import '../../../../../core/base_widget/app_top_app_bar/app_top_app_bar.dart';
import '../../../../../core/constant/app_style.dart';
import '../../../../../core/constant/theme/custom_theme.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../../core/widgets/button_primary.dart';
import '../../../../../core/widgets/text_form_field.dart';
import '../../../cost_registration/domain/usecase/destory/param/destroy_param.dart';
import '../../../cost_registration/presentation/bloc/destroy/destroy_bloc.dart';
import '../widgets/introduction_file_picker.dart';

class IntroductionRequestScreen extends StatefulWidget {
  final String contractId;
  final String insuranceCompanyId;
  final String customerCompanyId;

  const IntroductionRequestScreen(
      {super.key, required this.contractId, required this.insuranceCompanyId, required this.customerCompanyId});

  @override
  State<IntroductionRequestScreen> createState() => _IntroductionRequestScreenState();
}

class _IntroductionRequestScreenState extends State<IntroductionRequestScreen> {
  String? dropdownValue;
  GetAllClinicCitiesResponseData? dropdown;
  TextEditingController introductionNumber = TextEditingController();
  TextEditingController introductionName = TextEditingController(
    text: "darmanet.saman_insurance".tr(),
  );

  TextEditingController phoneNumber = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  late GetLastVoucherNumberBloc _getLastVoucherNumberBloc;
  late GetCitiesBloc _getCitiesBloc;
  late DestroyBloc _destroyBloc;
  late GetActiveByPersonForVoucherBloc _getActiveByPersonForVoucherBloc;

  late GetAllClinicBloc _getAllClinicBloc;
  late GetAllFamilyForAllContractBloc _getAllFamilyForAllContractBloc;
  late UploadBloc _uploadBloc;
  late PersonVoucherCreateBloc _personVoucherCreateBloc;

  late int imgIndex;

  bool loadingLastVoucher = true;
  bool loadingGetCities = true;
  bool loadingGetActiveByPerson = true;

  bool loadingGetAllClinic = true;
  bool loadingGetAllFamilyForAllContract = true;

  List introductionsList = [
    ["darmanet.hospitalization", "1"],
    ["darmanet.dentistry", "2"],
    ["darmanet.paraclinical", "3"],
    ["darmanet.medicinal", "4"],
    ["darmanet.emergency", "5"]
  ];

  List<String> getCities = [];
  List<String> citiesValue = [];
  List<GetActiveByPersonForVoucherResponseData> contractList = [];
  List<GetAllFamilyForAllContractResponseData> insurerList = [];
  List<String> getClinicList = [];
  List<String> clinicsValue = [];

  List<String> fileNameList = [];
  late File file;
  String fileName = "";
  String customerCompanyId = "";

  String personId = "";
  String contractId = "";

  String cityId = "";
  String clinicId = "";
  String textClinicId = "";
  String insuranceCompanyId = "";

  String voucherType = "";
  List<String> fileIdList = [];
  String nationalCode = "";

  @override
  void initState() {
    Box box = Hive.box(Strings.appDBName);
    nationalCode = box.get(Strings.nationalId);

    _destroyBloc = sl<DestroyBloc>();
    _getLastVoucherNumberBloc = sl<GetLastVoucherNumberBloc>();
    _getCitiesBloc = sl<GetCitiesBloc>();
    _getActiveByPersonForVoucherBloc = sl<GetActiveByPersonForVoucherBloc>();

    _getAllClinicBloc = sl<GetAllClinicBloc>();
    _getAllFamilyForAllContractBloc = sl<GetAllFamilyForAllContractBloc>();
    _uploadBloc = sl<UploadBloc>();
    _personVoucherCreateBloc = sl<PersonVoucherCreateBloc>();

    _getLastVoucherNumberBloc.add(
      GetLastVoucherNumberEvent.getLastVoucherNumberEventCalled(
        noParams: NoParams(),
      ),
    );

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
          create: (context) => _getLastVoucherNumberBloc,
        ),
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
          create: (context) => _getAllFamilyForAllContractBloc,
        ),
        BlocProvider(
          create: (context) => _uploadBloc,
        ),
        BlocProvider(
          create: (context) => _destroyBloc,
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<GetLastVoucherNumberBloc, GetLastVoucherNumberState>(
            bloc: _getLastVoucherNumberBloc,
            listener: (context, state) {
              state.maybeWhen(
                loadFailure: (failure) {
                  showErrorWidget(context, failure.code, failure.message!);
                  setState(() {
                    loadingLastVoucher = false;
                  });
                },
                loadSuccess: (getLastVoucherNumberEntities) {
                  setState(() {
                    loadingLastVoucher = false;
                    introductionNumber.text = getLastVoucherNumberEntities.voucherNumber;
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
                    for (var element in getCitiesEntities.getCitiesResponseData) {
                      getCities.add(element.text);
                      citiesValue.add(element.value);
                    }

                    loadingGetCities = false;
                  });
                },
                orElse: () {},
              );
            },
          ),
          BlocListener<GetAllFamilyForAllContractBloc, GetAllFamilyForAllContractState>(
              bloc: _getAllFamilyForAllContractBloc,
              listener: (context, state) {
                state.maybeWhen(
                  loadFailure: (failure) {
                    showErrorWidget(context, failure.code, failure.message!);
                    setState(() {
                      loadingGetAllFamilyForAllContract = false;
                    });
                  },
                  loadSuccess: (getAllFamilyForAllContractEntities) {
                    setState(() {
                      insurerList = getAllFamilyForAllContractEntities.getAllFamilyForAllContractResponseData;
                      personId = getAllFamilyForAllContractEntities.getAllFamilyForAllContractResponseData[0].value;
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
                  showErrorWidget(context, failure.code, failure.message!);
                },
                loadSuccess: (entities) {
                  setState(() {
                    contractList = entities.getActiveByPersonForVoucherResponseData;
                    customerCompanyId = entities.getActiveByPersonForVoucherResponseData[0].customerCompanyId;
                    _getAllFamilyForAllContractBloc.add(
                      GetAllFamilyForAllContractEvent.getAllFamilyForAllContractCalled(
                        param: GetAllFamilyForAllContractParam(
                          contractId: entities.getActiveByPersonForVoucherResponseData[0].id,
                          customerCompanyId: entities.getActiveByPersonForVoucherResponseData[0].customerCompanyId,
                        ),
                      ),
                    );
                    loadingGetActiveByPerson = false;
                  });
                },
                orElse: () {},
              );
            },
          ),
          BlocListener<UploadBloc, UploadState>(
              bloc: _uploadBloc,
              listener: (context, state) {
                state.maybeWhen(
                  loadFailure: (failure) {
                    showErrorWidget(context, failure.code, failure.message!);
                  },
                  loadSuccess: (getAllClinicEntities) {
                    setState(() {
                      fileIdList.add(getAllClinicEntities.uploadResponseData.id);
                      loadingGetAllClinic = false;
                    });
                  },
                  orElse: () {},
                );
              }),
          BlocListener<GetAllClinicBloc, GetAllClinicState>(
              bloc: _getAllClinicBloc,
              listener: (context, state) {
                state.maybeWhen(
                  loadFailure: (failure) {
                    showErrorWidget(context, failure.code, failure.message!);
                  },
                  loadSuccess: (getAllClinicEntities) {
                    setState(() {
                      for (var element in getAllClinicEntities.getAliiClinicResponseData) {
                        getClinicList.add(element.text);
                        clinicsValue.add(element.value);
                      }
                      loadingGetAllClinic = false;
                    });
                  },
                  orElse: () {},
                );
              }),
          BlocListener<DestroyBloc, DestroyState>(
            bloc: _destroyBloc,
            listener: (context, state) {
              state.maybeWhen(
                loadFailure: (failure) {
                  showErrorWidget(
                    context,
                    failure.code,
                    "darmanet.delete_image_failed".tr(),
                  );
                },
                loadSuccess: (destroyEntities) {
                  if (destroyEntities == true) {
                    setState(() {
                      fileNameList.removeAt(imgIndex);
                    });
                    showSuccessWidget(context, "darmanet.success_message".tr(), () {
                      Navigator.of(context).pop();
                    });
                  }
                },
                orElse: () {},
              );
            },
          ),
        ],
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppTopAppBar(
            title: 'darmanet.referral_letter_request'.tr(),
            isQrCode: false,

          ),
          body: loadingLastVoucher || loadingGetActiveByPerson || loadingGetCities || loadingGetAllFamilyForAllContract
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Form(
                  key: _formKey,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      width: width * 0.9,
                      child: SingleChildScrollView(
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
                              width: double.infinity,
                              title: 'darmanet.city'.tr(),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            dropDownIntroduction(
                              height: height * 0.15,
                              width: double.infinity,
                              title: 'darmanet.introduction_type'.tr(),
                            ),
                            SizedBox(
                              height: height * 0.03,
                            ),
                            dropDownInsurer(
                              height: height * 0.15,
                              width: double.infinity,
                              title: 'darmanet.patient_name_title'.tr(),
                            ),
                            SizedBox(
                              height: height * 0.03,
                            ),
                            CustomTextFormField(
                              maxLength: 11,
                              fillColor: colorTheme.bg,
                              controller: phoneNumber,
                              hint: "09*********",
                              errorMessage: '',
                              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                              validator: (value) => Utils.validateMobile(value),
                              customWidth: width * 0.9,
                              enableBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: colorTheme.borders),
                              ),
                              keyboardType: TextInputType.phone,
                              title: 'darmanet.mobile_number'.tr(),
                            ),
                            dropDownClinicList(
                              height: height * 0.15,
                              width: double.infinity,
                              title: 'darmanet.clinic_name'.tr(),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            dropDownContractList(
                              height: height * 0.15,
                              width: double.infinity,
                              title: 'darmanet.contract'.tr(),
                            ),
                            SizedBox(
                              height: height * 0.03,
                            ),
                            BlocBuilder<UploadBloc, UploadState>(
                              bloc: _uploadBloc,
                              builder: (context, state) {
                                final bool loading = state is UploadStateLoading;
                                return IntroductionFilePickerWidget(
                                    widthA: width * 0.9,
                                    heightA: height * 0.08,
                                    loading: loading,
                                    caption: fileName.isEmpty ? 'darmanet.doctor_order'.tr() : fileName,
                                    iconName: fileName.isEmpty
                                        ? "assets/images/document_cloud.png"
                                        : "assets/images/document_download.png",
                                    onTap: loading
                                        ? null
                                        : () async {
                                            FilePickerResult? result =
                                                await FilePicker.platform.pickFiles(type: FileType.image);
                                            List<int>? byteFile = result?.files.first.bytes?.toList();
                                            if (result != null) {
                                              setState(() {
                                                if (kIsWeb) {
                                                  fileName = result.files.single.name;
                                                  _uploadBloc.add(
                                                    UploadEvent.uploadEventCalled(
                                                      param: UploadParam(
                                                        file: File(""),
                                                        fileSize: 45,
                                                        fileName: fileName,
                                                        byteFile: byteFile,
                                                      ),
                                                    ),
                                                  );
                                                } else {
                                                  file = File(result.files.single.path!);
                                                  fileName = result.files.single.name;
                                                  _uploadBloc.add(
                                                    UploadEvent.uploadEventCalled(
                                                      param: UploadParam(
                                                        file: file,
                                                        fileSize: 45,
                                                        fileName: fileName,
                                                        byteFile: byteFile,
                                                      ),
                                                    ),
                                                  );
                                                }
                                              });
                                            } else {
                                              // User canceled the picker
                                            }
                                          });
                              },
                            ),
                            Container(
                              width: width * 0.9,
                              margin: EdgeInsets.only(top: height * 0.01),
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: fileNameList.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: SizedBox(
                                        width: width * 1,
                                        height: height * 0.08,
                                        child: DottedBorder(
                                            dashPattern: const [5, 5, 5, 5],
                                            borderType: BorderType.RRect,
                                            color: colorTheme.primary80,
                                            strokeWidth: 1,
                                            radius: const Radius.circular(12),
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 9.0, vertical: 13.0),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  const Image(
                                                    width: 20,
                                                    height: 20,
                                                    image: AssetImage(
                                                      "assets/images/document_download.png",
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(right: 8.0),
                                                    child: SizedBox(
                                                      width: width * 0.5,
                                                      child: Text(
                                                        fileNameList[index],
                                                        style: AppStyle.size12Weight600,
                                                      ),
                                                    ),
                                                  ),
                                                  const Spacer(),
                                                  IconButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          imgIndex = index;
                                                        });

                                                        _destroyBloc.add(
                                                          DestroyEvent.destroyEventCalled(
                                                              param: DestroyParam(ids: [
                                                            fileNameList[index],
                                                          ])),
                                                        );
                                                      },
                                                      icon: const Icon(
                                                        Icons.delete,
                                                        color: Colors.red,
                                                      ))
                                                ],
                                              ),
                                            )),
                                      ),
                                    );
                                  }),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Align(
                              alignment: AlignmentDirectional.centerStart,
                              child: TextButton.icon(
                                onPressed: () async {
                                  FilePickerResult? result = await FilePicker.platform.pickFiles(type: FileType.image);
                                  List<int>? byteFile = result?.files.first.bytes?.toList();
                                  if (result != null) {
                                    setState(() {
                                      if (kIsWeb) {
                                        fileNameList.add(result.files.single.name);
                                        _uploadBloc.add(
                                          UploadEvent.uploadEventCalled(
                                            param: UploadParam(
                                              file: File(""),
                                              fileSize: 45,
                                              fileName: result.files.single.name,
                                              byteFile: byteFile,
                                            ),
                                          ),
                                        );
                                      } else {
                                        fileNameList.add(result.files.single.name);
                                        _uploadBloc.add(
                                          UploadEvent.uploadEventCalled(
                                            param: UploadParam(
                                              file: File(result.files.single.path!),
                                              fileSize: 45,
                                              fileName: result.files.single.name,
                                              byteFile: byteFile,
                                            ),
                                          ),
                                        );
                                      }
                                    });
                                  } else {
                                    // User canceled the picker
                                  }
                                },
                                icon: Icon(
                                  Icons.add,
                                  color: colorTheme.primary,
                                ),
                                label: Text(
                                  "darmanet.upload_other_documents".tr(),
                                  style: AppStyle.size13Weight600.copyWith(color: colorTheme.primary),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            BlocConsumer<PersonVoucherCreateBloc, PersonVoucherCreateState>(
                              bloc: _personVoucherCreateBloc,
                              listener: (context, state) {
                                state.maybeWhen(
                                  loadFailure: (failure) {
                                    showErrorWidget(context, failure.code, failure.message!);
                                  },
                                  loadSuccess: (personVoucherCreateEntities) {
                                    if (personVoucherCreateEntities.succeed == false) {
                                      showErrorWidget(context, 101, personVoucherCreateEntities.errorMessage);
                                    } else {
                                      showSuccessWidget(context, personVoucherCreateEntities.errorMessage, () {
                                        Navigator.push(
                                          context,
                                          PageTransition(
                                              child: const DashboardScreen(), type: PageTransitionType.leftToRight),
                                        );
                                      });
                                    }
                                  },
                                  orElse: () {},
                                );
                              },
                              builder: (context, state) {
                                final loading = state is PersonVoucherCreateStateLoading;
                                return Padding(
                                  padding: const EdgeInsets.only(bottom: 16.0),
                                  child: ButtonPrimary(
                                    title: 'darmanet.register_referral_letter_request'.tr(),
                                    buttonLoading: loading,
                                    customWidth: width * 0.9,
                                    customHeight: height * 0.07,
                                    style: AppStyle.size14Weight600White,
                                    onPressed: () {
                                      if (fileName == "") {
                                        showErrorWidget(context, 100, "لطفا دستور پزشک باگذاری شود");
                                      }

                                      if (_formKey.currentState!.validate()) {
                                        _personVoucherCreateBloc.add(
                                          PersonVoucherCreateEvent.personVoucherCreateEventCalled(
                                            param: PersonVoucherCreateParam(
                                              id: "",
                                              state: "",
                                              voucherNumber: "",
                                              code: introductionNumber.text,
                                              customerCompanyId: customerCompanyId,
                                              submitType: "1",
                                              personId: personId,
                                              doctorFileId: "",
                                              doctorId: "",
                                              type: voucherType,
                                              contractId: contractId,
                                              phone: phoneNumber.text,
                                              fileId: fileIdList.first,
                                              attachmentFileId: fileIdList,
                                              cityId: cityId,
                                              clinicId: clinicId,
                                              textClinicId: textClinicId,
                                              insuranceCompanyId: insuranceCompanyId,
                                            ),
                                          ),
                                        );
                                      }
                                    },
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
        ),
      ),
    );
  }

  Future<List<String>> _getCitiesRequestData(String query) async {
    return await Future.delayed(const Duration(seconds: 1), () {
      return getCities.where((e) {
        return e.toLowerCase().contains(query.toLowerCase());
      }).toList();
    });
  }

  Column dropDownGetCities({
    required double width,
    required String title,
  }) {
    final colorTheme = context.colorTheme<CustomTheme>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyle.size12Weight600darkGray,
        ),
        SizedBox(
          width: width,
          child: Theme(
            data: ThemeData(
              inputDecorationTheme: InputDecorationTheme(
                labelStyle: TextStyle(color: Colors.red),
                hintStyle: TextStyle(color: Colors.red),
                helperStyle:  TextStyle(color: Colors.red)
              ),
              hintColor: Colors.red,
              textTheme: TextTheme(
                bodyLarge:  TextStyle(color: Colors.red)
              )
            ),
            child: CustomDropdown<String>.searchRequest(
              futureRequest: _getCitiesRequestData,
              hintText: 'darmanet.select_text'.tr() ,
              searchHintText: "darmanet.search_text".tr(),
              items: getCities,
              closedBorder: Border.all(color: colorTheme.solid),
              closedBorderRadius: BorderRadius.circular(5),
              closedErrorBorder: Border.all(color: colorTheme.error),
              closedErrorBorderRadius: BorderRadius.circular(5),
              closedFillColor: colorTheme.bg,
              expandedFillColor: colorTheme.bg,
              validator: (value) => value == null ? "darmanet.select_city_name_alert".tr() : null,
              onChanged: (value) {
                setState(() {
                  cityId = citiesValue[getCities.indexOf(value)];
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
              },
            ),
          ),
        ),
      ],
    );
  }

  Column dropDownIntroduction({
    required double height,
    required double width,
    required String title,
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
            validator: (value) => value == null ? "darmanet.select_type_introduction_text".tr() : null,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            style: TextTypography.labelStyle,
            decoration: InputDecoration(
              filled: true,
              fillColor: colorTheme.bg,
              contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
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
              hintStyle: TextTypography.labelStyle
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
                        style: TextTypography.valueInputStyle,
                      ).tr(),
                    ),
                  ),
                )
                .toList(),
            onChanged: (value) {
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
            },
          ),
        ),
      ],
    );
  }

  Column dropDownInsurer({
    required double height,
    required double width,
    required String title,
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
            validator: (value) => value == null ? "darmanet.select_insurer_text".tr() : null,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            style: AppStyle.size12Weight300.copyWith(color: Colors.black),
            decoration: InputDecoration(
              filled: true,
              fillColor: colorTheme.bg,
              contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
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
              hintStyle: TextTypography.labelStyle
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
                        style: TextTypography.valueInputStyle,
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

  Future<List<String>> _getClinicRequestData(String query) async {
    return await Future.delayed(const Duration(seconds: 1), () {
      return getClinicList.where((e) {
        return e.toLowerCase().contains(query.toLowerCase());
      }).toList();
    });
  }

  Column dropDownContractList({
    required double height,
    required double width,
    required String title,
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
            validator: (value) => value == null ? "darmanet.select_contract_text".tr() : null,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            style: TextTypography.labelStyle,
            decoration: InputDecoration(
              filled: true,
              fillColor: colorTheme.bg,
              contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
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
              hintStyle: TextTypography.labelMedium
                  .copyWith(color: colorTheme.colorTextQuaternary , fontWeight: FontWeight.w400)
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
                        style: TextTypography.valueInputStyle,
                      ),
                    ),
                  ),
                )
                .toList(),
            onChanged: (value) {
              setState(() {
                value as GetActiveByPersonForVoucherResponseData;
                contractId = value.id;
                insuranceCompanyId = value.insuranceCompanyId;
              });
            },
          ),
        ),
      ],
    );
  }

  Column dropDownClinicList({
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
          style: AppStyle.size12Weight600darkGray,
        ),
        SizedBox(
          width: width,
          child: BlocBuilder<GetAllClinicBloc, GetAllClinicState>(
            bloc: _getAllClinicBloc,
            builder: (context, state) {
              final bool loading = state is GetAllClinicStateLoading;
              return loading
                  ? const Align(alignment: Alignment.center, child: CircularProgressIndicator())
                  : CustomDropdown<String>.searchRequest(
                      futureRequest: _getClinicRequestData,
                      hintText: 'darmanet.select_text'.tr(),
                      searchHintText: "darmanet.search_text".tr(),
                      items: getClinicList,
                      closedBorder: Border.all(color: colorTheme.solid),
                      closedBorderRadius: BorderRadius.circular(5),
                      closedErrorBorder: Border.all(color: colorTheme.error),
                      closedErrorBorderRadius: BorderRadius.circular(5),
                      closedFillColor: colorTheme.bg,
                      expandedFillColor: colorTheme.bg,
                      noResultFoundBuilder: (context, text) {
                        return Center(child: Text("darmanet.not_found_center_name_alert".tr()));
                      },
                      validator: (value) => value == null ? "darmanet.select_center_name_alert".tr() : null,
                      listItemBuilder: (context, item) {
                        return Container(
                          alignment: Alignment.centerRight,
                          child: Text(
                            item,
                            textDirection: TextDirection.ltr,
                            style: AppStyle.size12Weight300.copyWith(color: Colors.black),
                          ),
                        );
                      },
                      onChanged: (value) {
                        setState(() {
                          clinicId = clinicsValue[getClinicList.indexOf(value)];
                        });
                      },
                    );
            },
          ),
        ),
      ],
    );
  }
}
