import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/core/utils/utils.dart';
import 'package:ios_samx/feature/main_app/wallet/presentation/pages/with_draw/withdraw_screen.dart';
import 'package:easy_localization/easy_localization.dart' as locale;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:magicon/magicon.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:pinput/pinput.dart';

class OtpWidget extends StatefulWidget {
  final String phoneNumber;
  final void Function(String)? onCompleted;
  final Widget timerWidget;

  final Widget buttonWidget;
  final bool? isError;
  final EnterOtpCallback enterOtpCallback;
  final String? Function(String?)? validator;

  const OtpWidget(
      {super.key,
      required this.phoneNumber,
      required this.onCompleted,
      required this.timerWidget,
      this.isError = false,
      required this.enterOtpCallback,
      this.validator,
      required this.buttonWidget});

  @override
  State<OtpWidget> createState() => _OtpWidgetState();
}

class _OtpWidgetState extends State<OtpWidget> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    final width = ResponsiveLayout.getDeviceType(context);
    final height = MediaQuery.of(context).size.height;
    final colorTheme = context.colorTheme<CustomTheme>();

    final defaultPinTheme = PinTheme(
      width: 70,
      height: 48,
      textStyle: TextTypography.valueInputStyle,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: colorTheme.borders.withOpacity(0.3),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
            color: widget.isError! ? colorTheme.error : Colors.white),
      ),
    );

    final errorPinTheme = PinTheme(
      width: 70,
      height: 48,
      textStyle:  TextTypography.valueInputStyle.copyWith(color: colorTheme.error),
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: colorTheme.borders.withOpacity(0.3),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: colorTheme.error, width: 1),
      ),
    );

    final focusedPinTheme = PinTheme(
      width: 70,
      height: 48,
      textStyle: TextTypography.valueInputStyle,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: colorTheme.borders.withOpacity(0.3),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
            color: widget.isError! ? colorTheme.error : colorTheme.primary,
            width: 1),
      ),
    );

    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context)
            .viewInsets
            .bottom,
      ),      child: Container(
        width: width,
        decoration: BoxDecoration(
          color: colorTheme.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
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
              Container(
                margin: EdgeInsets.only(
                  top: 5,
                  bottom: height * 0.03,
                ),
                alignment: Alignment.center,
                width: width * 0.4,
                child: Image(
                  height: height * 0.15,
                  image: const AssetImage("assets/images/otp.png"),
                ),
              ),
              Text(
                "main.one_time_code_sent_to".tr(),
                style: TextTypography.labelMedium
                    .copyWith(fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Directionality(
                textDirection: TextDirection.ltr,
                child: Text(
                  Utils().maskPhoneNumber(widget.phoneNumber).toPersianDigit(),
                  style: TextTypography.labelLarge
                      .copyWith(fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Text(
                "main.one_time_code".tr(),
                style: TextTypography.labelMedium,
              ),
              const SizedBox(
                height: 15,
              ),
              Directionality(
                textDirection: TextDirection.ltr,
                child: SizedBox(
                  width: width * 0.9,
                  child: Pinput(
                      scrollPadding: const EdgeInsets.only(bottom: 100),
                      androidSmsAutofillMethod:
                          AndroidSmsAutofillMethod.smsRetrieverApi,
                      length: 6,
                      controller: pinController,
                      focusNode: focusNode,
                      defaultPinTheme: defaultPinTheme,
                      focusedPinTheme: focusedPinTheme,
                      errorPinTheme: errorPinTheme,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      listenForMultipleSmsOnAndroid: true,
                      keyboardType: TextInputType.number,
                      validator: widget.validator,
                      separatorBuilder: (index) => const SizedBox(width: 0.5),
                      onChanged: (value) {
                        setState(() {
                          widget.enterOtpCallback(value);
                        });
                      },
                      onCompleted: widget.onCompleted),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              widget.timerWidget,
              const SizedBox(
                height: 20,
              ),
              widget.isError == null || widget.isError == false
                  ? Container()
                  : SizedBox(
                      width: width * 0.9,
                      child: Row(
                        children: [
                          Icon(
                            Magicon.infoCircle,
                            color: colorTheme.error,
                          ),

                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text(
                              "main.incorrect_one_time_code".tr(),
                              style: TextTypography.labelMedium
                                  .copyWith(color: colorTheme.error , fontSize: 10),
                            ),
                          ),
                        ],
                      ),
                    ),
              const SizedBox(
                height: 25,
              ),
              widget.buttonWidget,
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
