import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/utils/utils.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';

import 'package:ios_samx/core/base_widget/index.dart' show AppButton, ButtonType;
import 'package:persian_number_utility/persian_number_utility.dart';
import '../../../../../core/constant/theme/typography.dart';
import '../../../../../core/widgets/simple_rounded_container.dart';

Future profileIbanBottomSheet({
  required BuildContext context,
  required CustomTheme colorTheme,
  required double width,
  required final String ibanNo,
  required final String ibanCaption,
  required final String icon,
  required final String bankName,
  required final String btmConfirm,
  required final void Function() onPressedDecline,
  required final void Function() onPressedDeActive,
}) {
  return showModalBottomSheet(
      context: context,
      constraints: BoxConstraints(
        maxWidth: width,
      ),
      backgroundColor: colorTheme.bg,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      builder: (context) {
        return Container(
          margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.05,
            left: MediaQuery.of(context).size.width * 0.05,
            right: MediaQuery.of(context).size.width * 0.05,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.width * 0.03),
                  child: Text(
                    ibanCaption,
                    style: TextTypography.titleSmall
                        .copyWith(color: colorTheme.text),
                  ),
                ),
                SimpleRoundedContainer(
                  padding: 2,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.1,
                  bgColor: colorTheme.layer,
                  borderRadius: 8.0,
                  borderColor: colorTheme.borders,
                  widget: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Padding(
                        padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                        child:  Container(
                          height: 40,
                          width: 40,
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              color: colorTheme.white,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(
                                  100,
                                ),
                              )),
                          child: Image(
                            width: 32,
                            image: AssetImage(
                              "assets/images/bank_icons/${Utils.extractIconBankBaseSheba(ibanNo.substring(4,7))}.png",
                            ),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            alignment: Alignment.topRight,
                            child: Text("${'main.bank_name'.tr()} $bankName",
                                style: TextTypography.labelMedium
                                    .copyWith(color: colorTheme.text)),
                          ),
                          Text(Utils.ibanFormatter(ibanNo.toPersianDigit()),
                              textDirection: TextDirection.ltr,
                              style: TextTypography.labelMedium
                                  .copyWith(color: colorTheme.text)),
                        ],
                      ),
                      const Spacer()
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.08,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppButton(
                      buttonType: ButtonType.isFilled,
                      title: btmConfirm,
                      customHeight: 48,
                      customWidth: width * 0.45,
                      onPressed: () {
                        onPressedDeActive();
                      },
                    ),
                    const Spacer(),
                    AppButton(
                      buttonType: ButtonType.isText,
                      title: "main.refuse".tr(),
                      customHeight: 48,
                      customWidth: width * 0.4,
                      onPressed: () {
                        onPressedDecline();
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.05,
                ),
              ],
            ),
          ),
        );
      });
}
