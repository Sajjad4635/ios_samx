import 'package:ios_samx/core/base_widget/app_snack_bar/index.dart';
import 'package:ios_samx/core/base_widget/app_text_field/index.dart';
import 'package:ios_samx/core/base_widget/app_top_app_bar/app_top_app_bar.dart';
import 'package:ios_samx/core/constant/strings.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/extensions/convert_date.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/core/utils/utils.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/entities/relatives_list/relatives_list_response_data/relative/relative.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/add_relative/params/add_relative_param.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/register_without_otp/params/register_under_18_params.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/register_without_otp/params/register_upper_18_params.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/user_info_inquiry/params/user_info_inquiry_param.dart';
import 'package:ios_samx/feature/main_app/relatives/presentation/bloc/add_relative/add_relative_bloc.dart';
import 'package:ios_samx/feature/main_app/relatives/presentation/bloc/register_without_otp/register_under_18/register_under_18_bloc.dart';
import 'package:ios_samx/feature/main_app/relatives/presentation/bloc/register_without_otp/register_upper_18/register_upper_18_bloc.dart';
import 'package:ios_samx/feature/main_app/relatives/presentation/bloc/user_info_inquiry/user_info_inquiry_bloc.dart';
import 'package:ios_samx/feature/main_app/relatives/presentation/pages/relative_list_screen.dart';
import 'package:ios_samx/feature/main_app/relatives/presentation/widgets/birth_date_field.dart';
import 'package:ios_samx/feature/main_app/relatives/presentation/widgets/national_code_field.dart';
import 'package:ios_samx/feature/main_app/relatives/presentation/widgets/relation_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';

import '../../../../../core/base_widget/app_buttons/app_button/index.dart';
import '../../../../../injection_container.dart';
import '../../domain/entities/user_info/user_info_response_data/user_info_response_data.dart';

typedef BirthDateCallback = void Function(
  Jalali birthDatePicked,
);

typedef RelativeIdCallback = void Function(
  String relativeId,
);
typedef RelativeGenderCallback = void Function(
  int relativeGender,
);

class AddRelativesScreen extends StatefulWidget {
  final List<Relative> relativesList;

  const AddRelativesScreen({super.key, required this.relativesList});

  @override
  State<AddRelativesScreen> createState() => _AddRelativesScreenState();
}

class _AddRelativesScreenState extends State<AddRelativesScreen> {
  final _formKey = GlobalKey<FormState>();
  final _phoneNumberFormKey = GlobalKey<FormState>();
  TextEditingController relativeNationalCodeController = TextEditingController();
  TextEditingController birthDateController = TextEditingController();
  TextEditingController relationController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  late UserInfoInquiryBloc _userInfoInquiryBloc;
  late AddRelativeBloc _addRelativeBloc;
  late RegisterUnder18Bloc _registerUnder18Bloc;
  late RegisterUpper18Bloc _registerUpper18Bloc;
  Jalali? birthDatePicked;
  String formattedDate = '';
  String relativeId = '';
  int gender = 0;
  late UserInfoResponseData userInfo = const UserInfoResponseData();
  String nationalCode = '';

  @override
  void initState() {
    super.initState();
    _userInfoInquiryBloc = sl<UserInfoInquiryBloc>();
    _addRelativeBloc = sl<AddRelativeBloc>();
    _registerUnder18Bloc = sl<RegisterUnder18Bloc>();
    _registerUpper18Bloc = sl<RegisterUpper18Bloc>();
    final Box box = Hive.box(Strings.appDBName);
    nationalCode = box.get("nationalId");
  }

  @override
  Widget build(BuildContext context) {
    final width = ResponsiveLayout.getDeviceType(context);
    final colorTheme = context.colorTheme<CustomTheme>();

    return SafeArea(
      child: Scaffold(
        backgroundColor: colorTheme.bg,
        resizeToAvoidBottomInset: false,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(64.0),
          child: AppTopAppBar(
            title: 'main.add_relatives'.tr(),
            isQrCode: false,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => _userInfoInquiryBloc,
            ),
          ],
          child: MultiBlocListener(
            listeners: [
              BlocListener<AddRelativeBloc, AddRelativeState>(
                  bloc: _addRelativeBloc,
                  listener: (context, state) {
                    state.maybeWhen(
                      loadFailure: (failure) {
                        showErrorWidget(context, failure.code, failure.message!);
                      },
                      loadSuccess: (addRelativeEntities) {
                        Navigator.of(context).pop();
                        Navigator.pushReplacement(
                            context,
                            PageTransition(child: const RelativeListScreen(), type: PageTransitionType.leftToRight),
                            );
                        AppSnackBar.showSnackBar(
                            context: context,
                            type: SnackBarType.success,
                            title: 'main.confirm'.tr(),
                            message: "main.successfull_add_relative_msg"
                                .tr(args: ["${userInfo.firstName} ${userInfo.lastName}"]));
                      },
                      orElse: () {},
                    );
                  }),
              BlocListener<RegisterUnder18Bloc, RegisterUnder18State>(
                  bloc: _registerUnder18Bloc,
                  listener: (context, state) {
                    state.maybeWhen(
                      loadFailure: (failure) {
                        showErrorWidget(context, failure.code, failure.message!);
                      },
                      loadSuccess: (registerWithoutOtpEntities) {
                        // Navigator.pop(context);
                        _userInfoInquiryBloc.add(UserInfoInquiryEvent.userInfoInquiryEventCalled(
                            userInfoInquiryParam:
                                UserInfoInquiryParam(nationalCode: relativeNationalCodeController.text)));
                      },
                      orElse: () {},
                    );
                  }),
              BlocListener<RegisterUpper18Bloc, RegisterUpper18State>(
                  bloc: _registerUpper18Bloc,
                  listener: (context, state) {
                    state.maybeWhen(
                      loadFailure: (failure) {
                        showErrorWidget(context, failure.code, failure.message!);
                      },
                      loadSuccess: (registerWithoutOtpEntities) {
                        Navigator.of(context).pop();
                        _userInfoInquiryBloc.add(UserInfoInquiryEvent.userInfoInquiryEventCalled(
                            userInfoInquiryParam:
                                UserInfoInquiryParam(nationalCode: relativeNationalCodeController.text)));
                      },
                      orElse: () {},
                    );
                  })
            ],
            child: Form(
              key: _formKey,
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    NationalCodeFiled(
                      nationalCodeController: relativeNationalCodeController,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    BirthDateFiled(
                      birthDateController: birthDateController,
                      formKey: _formKey,
                      birthDateCallback: (Jalali birthDate) {
                        setState(() {
                          birthDatePicked = birthDate;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    RelationFiled(
                      relationController: relationController,
                      formKey: _formKey,
                      relativesList: widget.relativesList,
                      relativeIdCallback: (String selectedRelative) {
                        relativeId = selectedRelative;
                      },
                      relativeGenderCallback: (int relativeGender) {
                        gender = relativeGender;
                      },
                    ),
                    const Spacer(),
                    BlocConsumer<UserInfoInquiryBloc, UserInfoInquiryState>(
                      bloc: _userInfoInquiryBloc,
                      listener: (context, state) {
                        bool isUserUpper18 = true;
                        state.maybeWhen(
                            loadFailure: (failure) {
                              if (failure.code == 100) {
                                isUserUpper18 = Utils.isUserUpper18(birthDatePicked!.year);
                                if (isUserUpper18) {
                                  enterUserPhoneBottomSheet();
                                } else {
                                  _registerUnder18Bloc.add(RegisterUnder8Event.registerUnder18EventCalled(
                                      registerUnder18Params: RegisterUnder18Params(
                                    nationalCode: relativeNationalCodeController.text,
                                    birthDate: formattedDate,
                                  )));
                                }
                              } else {
                                Navigator.of(context).pop();
                                showErrorWidget(context, failure.code, failure.message!);
                              }
                            },
                            loadSuccess: (userInfoEntities) {
                              setState(() {
                                userInfo = userInfoEntities.userInfoResponseData;
                                print(userInfo.gender);
                                print(gender);
                                if (gender == userInfo.gender) {
                                  inquiryBottomSheet();
                                } else {
                                  showErrorWidget(context, 100, "عدم تطابق جنسیت");
                                }
                              });
                            },
                            orElse: () {});
                      },
                      builder: (context, state) {
                        final loading = state is UserInfoInquiryStateLoading;

                        return Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: AppButton(
                            buttonType: ButtonType.isFilled,
                            title: "main.confirmation_and_inquiry".tr(),
                            customHeight: 48,
                            customWidth: width * 0.9,
                            buttonLoading: loading,
                            onPressed: () async {
                              if (_formKey.currentState!.validate()) {
                                if (birthDatePicked != null) {
                                  formattedDate = ConvertDate().jalaliToGregorianDateString(birthDatePicked!);
                                  if (userInfo.nationalCode == null) {
                                    _userInfoInquiryBloc.add(UserInfoInquiryEvent.userInfoInquiryEventCalled(
                                        userInfoInquiryParam:
                                            UserInfoInquiryParam(nationalCode: relativeNationalCodeController.text)));
                                  }
                                }
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
    );
  }

  Future<void> inquiryBottomSheet() async {
    final width = ResponsiveLayout.getDeviceType(context);
    final height = MediaQuery.of(context).size.height;
    final colorTheme = context.colorTheme<CustomTheme>();
    if (birthDatePicked != null) {
      formattedDate = ConvertDate().jalaliToGregorianDateString(birthDatePicked!);
    }
    await await showModalBottomSheet(
        context: context,
        backgroundColor: colorTheme.white,
        isScrollControlled: true,
        builder: (context) {
          return Container(
            width: width,
            decoration: BoxDecoration(
              color: colorTheme.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Wrap(
              children: [
                Center(
                  child: SizedBox(
                    width: width * 0.1,
                    child: Divider(
                      thickness: 4,
                      color: colorTheme.borders.withOpacity(0.50),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text(
                    'main.desired_person_info'.tr(),
                    style: TextTypography.titleMedium,
                  ),
                ),
                SizedBox(
                  height: height * 0.07,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'main.name_and_lastname'.tr(),
                      style: TextTypography.bodySmall,
                    ),
                    Text(
                      "${userInfo.firstName} ${userInfo.lastName} ",
                      style: TextTypography.titleMedium,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'strings.nationalCode'.tr(),
                      style: TextTypography.bodySmall,
                    ),
                    Text(
                      userInfo.nationalCode ?? "",
                      style: TextTypography.titleMedium,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'strings.gender'.tr(),
                      style: TextTypography.bodySmall,
                    ),
                    Text(
                      userInfo.gender == 1 ? "main.man".tr() : "main.woman".tr(),
                      style: TextTypography.titleMedium,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'main.relation'.tr(),
                      style: TextTypography.bodySmall,
                    ),
                    Text(
                      relationController.text,
                      style: TextTypography.titleMedium,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.07,
                ),
                BlocBuilder<AddRelativeBloc, AddRelativeState>(
                    bloc: _addRelativeBloc,
                    builder: (context, state) {
                      final bool loading = state is AddRelativeStateLoading;
                      return AppButton(
                        buttonType: ButtonType.isFilled,
                        title: "main.submit_and_final_approval".tr(),
                        customHeight: 48,
                        customWidth: width * 0.9,
                        buttonLoading: loading,
                        onPressed: () {
                          _addRelativeBloc.add(AddRelativeEvent.addRelativeEventCalled(
                              addRelativeParam: AddRelativeParam(
                            nationalCode: nationalCode,
                            relativeId: relativeId,
                            relativeNationalCode: relativeNationalCodeController.text,
                          )));
                        },
                      );
                    }),
                SizedBox(
                  height: height * 0.08,
                ),
              ],
            ),
          );
        });
  }

  Future<void> enterUserPhoneBottomSheet() async {
    final width = ResponsiveLayout.getDeviceType(context);
    final height = MediaQuery.of(context).size.height;
    final colorTheme = context.colorTheme<CustomTheme>();
    phoneNumberController.text = "";

    await await showModalBottomSheet(
        context: context,
        backgroundColor: colorTheme.white,
        isScrollControlled: true,
        builder: (context) {
          return Container(
            width: width,
            decoration: BoxDecoration(
              color: colorTheme.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: _phoneNumberFormKey,
              child: Wrap(
                children: [
                  Center(
                    child: SizedBox(
                      width: width * 0.1,
                      child: Divider(
                        thickness: 4,
                        color: colorTheme.borders.withOpacity(0.50),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: AppTextField(
                      keyboardType: TextInputType.number,
                      customWidth: width * 0.9,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      inputFormatters: [LengthLimitingTextInputFormatter(11), FilteringTextInputFormatter.digitsOnly],
                      validator: (value) => Utils.validateMobile(value),
                      controller: phoneNumberController,
                      label: 'main.user_mobile_number'.tr(),
                      helperText: "main.fill_field_is_required".tr(),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.13,
                  ),
                  BlocBuilder<RegisterUpper18Bloc, RegisterUpper18State>(
                    bloc: _registerUpper18Bloc,
                    builder: (context, state) {
                      final bool loading = state is RegisterUpper18StateLoading;
                      return AppButton(
                        buttonType: ButtonType.isFilled,
                        title: "main.submit_and_continue".tr(),
                        buttonLoading: loading,
                        customHeight: 48,
                        customWidth: width * 0.9,
                        onPressed: () {
                          if (_phoneNumberFormKey.currentState!.validate()) {
                            _registerUpper18Bloc.add(RegisterUpper18Event.registerUpper18EventCalled(
                                registerUpper18Params: RegisterUpper18Params(
                                    BirthDate: formattedDate,
                                    NationalCode: relativeNationalCodeController.text,
                                    PhoneNumber: phoneNumberController.text)));
                          }
                        },
                      );
                    },
                  ),
                  SizedBox(
                    height: height * 0.08,
                  ),
                ],
              ),
            ),
          );
        });
  }
}
