import 'package:ios_samx/core/base_widget/index.dart' show showAppBottomSheet;
import 'package:ios_samx/core/constant/app_colors.dart';
import 'package:ios_samx/core/constant/app_style.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/core/utils/utils.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:ios_samx/core/widgets/button_primary.dart';
import 'package:ios_samx/core/widgets/text_form_field.dart';
import 'package:ios_samx/feature/main_app/sso/domain/usecase/sign_up/params/sign_up_params.dart';
import 'package:ios_samx/feature/main_app/sso/presentation/bloc/sign_up/sign_up_bloc.dart';
import 'package:ios_samx/feature/main_app/sso/presentation/pages/register/sso_register_otp_screen.dart';
import 'package:ios_samx/injection_container.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magicon/magicon.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class SsoRegisterActivationScreen extends StatefulWidget {
  final String nationalCode;
  const SsoRegisterActivationScreen({super.key, required this.nationalCode});

  @override
  State<SsoRegisterActivationScreen> createState() =>
      _SsoRegisterActivationScreenState();
}

class _SsoRegisterActivationScreenState
    extends State<SsoRegisterActivationScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController phoneNumberController = TextEditingController();

  late List listyears = [];
  late List listdates = [];
  var monthselVal = '';
  var dayselVal = '';
  String yearsVal = '';
  String selectedDay = "";

  String selectedMonth = "";

  String selectedYear = "";

  List<dynamic> listMonthsEn = [
    {"id": 1, "value": "فروردین"},
    {"id": 2, "value": "اردیبهشت"},
    {"id": 3, "value": "خرداد"},
    {"id": 4, "value": "تیر"},
    {"id": 5, "value": "مرداد"},
    {"id": 6, "value": "شهریور"},
    {"id": 7, "value": "مهر"},
    {"id": 8, "value": "آبان"},
    {"id": 9, "value": "آذر"},
    {"id": 10, "value": "دی"},
    {"id": 11, "value": "بهمن"},
    {"id": 12, "value": "اسفند"}
  ];

  late SignUpBloc _signUpBloc;

  @override
  void initState() {
    _signUpBloc = sl<SignUpBloc>();
    listdates = Iterable<int>.generate(32).skip(1).toList();
    listyears = Iterable<int>.generate((Jalali.now().year) + 1)
        .skip(1300)
        .toList()
        .reversed
        .toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = ResponsiveLayout.getDeviceType(context);
    final colorTheme = context.colorTheme<CustomTheme>();
    return BlocProvider(
      create: (context) => _signUpBloc,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Form(
            key: _formKey,
            child: SizedBox(
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/bg_login.png'),
                        ),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 24),
                          SizedBox(
                            width: width * .9,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: const Icon(Magicon.arrowRight),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 94,
                                    child: const Image(
                                      height: 38,
                                      image: AssetImage(
                                          "assets/images/complete_logo.png"),
                                    ),
                                  ),
                                ),
                                const Expanded(child: SizedBox.shrink())
                              ],
                            ),
                          ),
                          const SizedBox(height: 24),
                          const SizedBox(
                            child: Text(
                              "تکمیل اطلاعات اولیه",
                              style: TextTypography.titleMedium,
                            ),
                          ),
                          const SizedBox(height: 42),
                          SizedBox(
                            width: width * .9,
                            child: Row(
                              children: [
                                Text(
                                  "کد ملی وارد شده: ${widget.nationalCode}"
                                      .tr()
                                      .toPersianDigit(),
                                  style: AppStyle.size14Weight400,
                                ),
                                const SizedBox(width: 12),
                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Column(
                                    children: [
                                      Text(
                                        "تغییر کد ملی".tr(),
                                        style:
                                            TextTypography.labelMedium.copyWith(
                                          color: colorTheme.primary,
                                        ),
                                      ),
                                      const SizedBox(height: 1),
                                      Container(
                                        color: colorTheme.primary,
                                        height: 1,
                                        width: 68,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 16),
                          SizedBox(
                            width: width * 0.9,
                            child: Text(
                              "main.complete_profile_enter_phone_and_birthday"
                                  .tr(),
                              style: AppStyle.size14Weight400,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    CustomTextFormField(
                      controller: phoneNumberController,
                      errorMessage: '',
                      maxLength: 11,
                      customWidth: width * 0.9,
                      keyboardType: TextInputType.number,
                      title: "main.mobile_number".tr(),
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      validator: (value) => Utils.validateMobile(value),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      width: width * 0.9,
                      alignment: Alignment.centerRight,
                      child: Text(
                        "main.date_of_birth".tr(),
                        style: AppStyle.size14Weight600,
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: width * 0.9,
                      child: datePicker(),
                    ),
                    Expanded(
                      child: BlocConsumer<SignUpBloc, SignUpState>(
                        bloc: _signUpBloc,
                        listener: (context, state) {
                          state.maybeWhen(
                            loadFailure: (failure) {
                              showErrorWidget(
                                  context, failure.code, failure.message!);
                            },
                            loadSuccess: (signUpEntities) {
                              showAppBottomSheet(
                                context: context,
                                child: SsoRegisterActivationOtpScreen(
                                  phoneNumber: phoneNumberController.text,
                                  nationalCode: widget.nationalCode,
                                  selectedDay: selectedDay,
                                  selectedMonth: selectedMonth,
                                  selectedYear: selectedYear,
                                ),
                              );
                            },
                            orElse: () {},
                          );
                        },
                        builder: (context, state) => Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 16),
                            child: ButtonPrimary(
                              title: "main.confirm_and_continue".tr(),
                              buttonLoading: state is SignUpStateLoading,
                              customWidth: width * 0.9,
                              customHeight: 48,
                              onPressed: selectedYear.isNotEmpty &&
                                      selectedMonth.isNotEmpty &&
                                      selectedDay.isNotEmpty
                                  ? () {
                                      if (_formKey.currentState!.validate()) {
                                        _signUpBloc.add(
                                            SignUpEvent.signUpEventCalled(
                                                SignUpParams(
                                          nationalCode: widget.nationalCode,
                                          phoneNumber:
                                              phoneNumberController.text,
                                        )));
                                      }
                                    }
                                  : null,
                            ),
                          ),
                        ),
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

  Widget datePicker() {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            decoration: const BoxDecoration(
                color: AppColors.fillColor,
                borderRadius: BorderRadius.all(Radius.circular(4.0))),
            child: SizedBox(
                child: ButtonTheme(
              alignedDropdown: true,
              child: dayDropdown(),
            )),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 2,
          child: Container(
            decoration: const BoxDecoration(
                color: AppColors.fillColor,
                borderRadius: BorderRadius.all(Radius.circular(4.0))),
            child: SizedBox(
              child: ButtonTheme(
                alignedDropdown: true,
                child: monthDropdown(),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 2,
          child: Container(
            decoration: const BoxDecoration(
                color: AppColors.fillColor,
                borderRadius: BorderRadius.all(Radius.circular(4.0))),
            child: SizedBox(
              child: ButtonTheme(
                alignedDropdown: true,
                child: yearDropdown(),
              ),
            ),
          ),
        ),
      ],
    );
  }

  DropdownButtonFormField<String> yearDropdown() {
    return DropdownButtonFormField<String>(
        hint: Text(
          'main.year'.tr(),
          style: AppStyle.size14Weight400,
        ),
        isExpanded: true,
        value: yearsVal == '' ? null : yearsVal,
        onChanged: (yearValue) {
          setState(() {
            selectedYear = yearValue!;
          });
        },
        items: listyears.map((item) {
          return DropdownMenuItem<String>(
            value: item.toString(),
            child: Text(
              item.toString().toPersianDigit(),
              style: AppStyle.size14Weight400,
            ),
          );
        }).toList());
  }

  DropdownButtonFormField<String> monthDropdown() {
    return DropdownButtonFormField<String>(
        isExpanded: true,
        hint: Text(
          'main.month'.tr(),
          style: AppStyle.size14Weight400,
        ),
        value: monthselVal == '' ? null : monthselVal,
        onChanged: (monthValue) {
          setState(() {
            selectedMonth = monthValue!;
          });
        },
        validator: (value) {
          return null;
        },
        items: listMonthsEn.map((item) {
          return DropdownMenuItem<String>(
            value: item["id"].toString(),
            child: Text(
              item["value"].toString(),
              style: AppStyle.size14Weight400,
            ),
          );
        }).toList());
  }

  DropdownButtonFormField<String> dayDropdown() {
    return DropdownButtonFormField<String>(
      hint: Text(
        'main.day'.tr(),
        style: AppStyle.size14Weight400,
      ),
      isExpanded: true,
      value: dayselVal == '' ? null : dayselVal,
      onChanged: (dayValue) {
        setState(() {
          selectedDay = dayValue!;
        });
      },
      items: listdates.map((item) {
        return DropdownMenuItem<String>(
          value: item.toString(),
          child: Text(
            item.toString().toPersianDigit(),
            style: AppStyle.size14Weight400,
          ),
        );
      }).toList(),
    );
  }
}
