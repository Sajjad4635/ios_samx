import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/core/utils/utils.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/entities/get_account/get_account_response_data/get_account_response_data.dart';
import 'package:ios_samx/feature/main_app/wallet/presentation/pages/with_draw/withdraw_screen.dart';
import 'package:ios_samx/feature/main_app/wallet/presentation/widget/wallet_data_radio_button_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

import '../../../../../core/base_widget/index.dart';

class ChooseIbanWidget extends StatefulWidget {
  final List<GetAccountResponseData> getAccountResponseData;
  final ChooseIbanCallback chooseIbanCallback;
  int selectedValue;

  ChooseIbanWidget(
      {super.key,
      required this.getAccountResponseData,
      required this.chooseIbanCallback,
      required this.selectedValue});

  @override
  State<ChooseIbanWidget> createState() => _ChooseIbanWidgetState();
}

class _ChooseIbanWidgetState extends State<ChooseIbanWidget> {
  @override
  Widget build(BuildContext context) {
    final width = ResponsiveLayout.getDeviceType(context);
    final height = MediaQuery.of(context).size.height;
    final colorTheme = context.colorTheme<CustomTheme>();

    return Container(
      width: width,
      decoration: BoxDecoration(
        color: colorTheme.layer,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
          SizedBox(
            height: height * 0.03,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Text(
              "main.accounts_list".tr(),
              style: TextTypography.bodySmall
                  .copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          ListView.builder(
              itemCount: widget.getAccountResponseData.length,
              shrinkWrap: true,
              itemBuilder: (buildContext, index) {
                return WalletDataRadioButtonWidget(
                    title: widget.getAccountResponseData[index].bank,
                    itemIndex: index,
                    selectedVal: widget.selectedValue,
                    radioButtonOnChanged: (val) {
                      setState(() {
                        widget.selectedValue = val!;
                      });
                    },
                    captionStyle: TextTypography.labelMedium,
                    titleStyle: TextTypography.labelMedium,
                    caption: Utils.ibanFormatter(widget
                        .getAccountResponseData[index].iban
                        .toPersianDigit()),
                    assetName:
                        "assets/images/bank_icons/${Utils.extractIconBankBaseSheba(widget.getAccountResponseData[index].iban.substring(4, 7))}.png");
              }),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: AppButton(
              buttonType: ButtonType.isSecondary,
              title: "main.submit_changes".tr(),
              customHeight: 48,
              customWidth: width - 20,
              onPressed: () {
                widget.chooseIbanCallback(
                    widget.getAccountResponseData[widget.selectedValue].iban);
                Navigator.of(context).pop();
              },
            ),
          ),
        ],
      ),
    );
  }
}
