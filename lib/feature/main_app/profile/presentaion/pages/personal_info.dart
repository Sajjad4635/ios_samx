import 'package:ios_samx/core/constant/strings.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/profile/presentaion/bloc/get_profile/get_profile_bloc.dart';
import 'package:ios_samx/feature/main_app/profile/presentaion/widgets/custom_alert_dialog.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:magicon/magicon.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import '../../../../../core/constant/app_style.dart';
import '../../../../../core/widgets/alert_dialog.dart';
import '../../../../../injection_container.dart';
import '../../domain/usecase/get_staff/param/get_staff_param.dart';
import '../bloc/get_staff/get_staff_bloc.dart';
import 'package:ios_samx/core/base_widget/index.dart'
    show AppButton, AppSnackBar, AppTextField, AppTopAppBar, ButtonType, SnackBarType;

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({
    super.key,
  });

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  TextEditingController controller = TextEditingController();

  bool isVisible = false;
  String firstName = "";
  String lastName = "";
  String phoneNumber = "";
  String nationalCode = "";
  String staffName = "";
  late String newStaffName;

  late GetStaffBloc _getStaffBloc;
  late GetProfileBloc _getProfileBloc;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _getStaffBloc = sl<GetStaffBloc>();
    _getProfileBloc = sl<GetProfileBloc>();
    _getProfileBloc.add(GetProfileEvent.getProfileEventCalled(noParams: NoParams()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = ResponsiveLayout.getDeviceType(context);
    final colorTheme = context.colorTheme<CustomTheme>();

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => _getStaffBloc),
        BlocProvider(create: (context) => _getProfileBloc),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<GetStaffBloc, GetStaffState>(
            bloc: _getStaffBloc,
            listener: (context, state) {
              state.maybeWhen(
                  loadFailure: (failure) {
                    showErrorWidget(context, failure.code, failure.message!);
                  },
                  loadSuccess: (entities) {
                    setState(() {
                      staffName = newStaffName;

                      final Box box = Hive.box(Strings.appDBName);

                      box.put(Strings.staffUserName, staffName);

                      AppSnackBar.showSnackBar(
                          context: context,
                          type: SnackBarType.success,
                          title: "main.confirm".tr(),
                          message: "main.staff_update".tr());
                    });
                  },
                  orElse: () {});
            },
          ),
          BlocListener<GetProfileBloc, GetProfileState>(
            bloc: _getProfileBloc,
            listener: (context, state) {
              state.maybeWhen(
                  loadFailure: (failure) {
                    showErrorWidget(context, failure.code, failure.message!);
                  },
                  loadSuccess: (getProfileEntities) {
                    setState(() {
                      firstName = getProfileEntities.getProfileResponseData.firstName!;
                      lastName = getProfileEntities.getProfileResponseData.lastName!;
                      phoneNumber = getProfileEntities.getProfileResponseData.phoneNumber!;
                      nationalCode = getProfileEntities.getProfileResponseData.nationalCode!;
                      staffName = getProfileEntities.getProfileResponseData.staffUsername!;
                    });
                  },
                  orElse: () {});
            },
          ),
        ],
        child: Scaffold(
          backgroundColor: colorTheme.bg,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(64.0),
            child: AppTopAppBar(
              title: "main.personnel_info".tr(),
              isQrCode: false,
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          body: SafeArea(
            child: Center(
              child: SizedBox(
                width: width,
                child: Column(
                  children: [
                    Container(
                      height: height * 0.4,
                      padding: const EdgeInsets.all(8.0),
                      margin: EdgeInsetsDirectional.all(width * 0.05),
                      decoration: BoxDecoration(
                        color: colorTheme.bg,
                        border: Border.all(
                          color: colorTheme.borders,
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(8)),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: SizedBox(
                              height: height / 12.888,
                              width: width * 0.9090,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "main.name_and_lastname".tr(),
                                    style: AppStyle.size14Weight400costColor,
                                  ),
                                  Text(
                                    "$firstName $lastName",
                                    style: AppStyle.size14Weight600,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Divider(
                              thickness: 1,
                              color: colorTheme.borders,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: SizedBox(
                              height: height / 12.888,
                              width: width * 0.9090,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "strings.nationalCode".tr(),
                                    style: AppStyle.size14Weight400costColor,
                                  ),
                                  Text(
                                    nationalCode.toString().toPersianDigit(),
                                    style: AppStyle.size14Weight600,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Divider(
                              thickness: 1,
                              color: colorTheme.borders,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: SizedBox(
                              height: height / 12.888,
                              width: width * 0.9090,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "strings.phoneNumber".tr(),
                                    style: AppStyle.size14Weight400costColor,
                                  ),
                                  Text(
                                    phoneNumber.toString().toPersianDigit(),
                                    style: AppStyle.size14Weight600,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Divider(
                              thickness: 1,
                              color: colorTheme.borders,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(start: 8.0),
                            child: SizedBox(
                              height: height / 12.888,
                              width: width * 0.9090,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("strings.user_name".tr(), style: AppStyle.size14Weight400costColor),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        staffName,
                                        style: AppStyle.size14Weight600,
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            updateStaffUsername(context, width);
                                          },
                                          icon: SizedBox(
                                            height: 20,
                                            child: Image.asset(
                                              'assets/images/edit_pen.png',
                                              fit: BoxFit.fill,
                                            ),
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
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

  Future<dynamic> updateStaffUsername(BuildContext context, double width) {
    return showDialog(
      anchorPoint: const Offset(24, 24),
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) => CustomAlertDialog(
        title: "main.edit_user_name".tr(),
        backButtonPressed: () {
          Navigator.of(context).pop();
        },
        body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsetsDirectional.only(start: 14.0, end: 14.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 16,
                ),
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    "main.enter_new_user_name".tr(),
                    style: AppStyle.size13Weight600black,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 70,
                  child: AppTextField(
                    controller: controller,
                    validator: (value) {
                      if (value!.length < 3) {
                        return "نام کاربری نامعتبر";
                      } else {
                        return null;
                      }
                    },
                    errorMessage: "main.username_is_required".tr(),
                    label: "  ${"main.new_user_name".tr()}",
                  ),
                ),
                BlocBuilder<GetStaffBloc, GetStaffState>(
                  bloc: _getStaffBloc,
                  builder: (context, state) {
                    final bool loading = state is GetStaffStateLoading;
                    return AppButton(
                      customHeight: 48,
                      customWidth: width * 0.8,
                      title: "main.confirm".tr(),
                      onPressed: () {
                        newStaffName = controller.text.toString();
                        if (_formKey.currentState!.validate()) {
                          _getStaffBloc.add(
                              GetStaffEvent.getStaffEventCalled(getStaffParam: GetStaffParam(username: newStaffName)));
                          Navigator.of(context).pop();
                          controller.text = "";

                          /// delete session id
                          final Box box = Hive.box(Strings.appDBName);
                          box.put("sessionID", null);
                        }
                      },
                      buttonType: ButtonType.isFilled,
                      isSecondaryEnable: true,
                      buttonLoading: loading,
                      rightIcon: null,
                      leftIcon: context.locale == const Locale('fa') ? Magicon.angleLeft : Magicon.angleRight,
                      //Icons.arrow_forward_ios
                    );
                  },
                ),
                const SizedBox(
                  height: 12,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
