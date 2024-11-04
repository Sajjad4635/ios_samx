import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/wallet_transaction/entity/wallet_transaction_response_data.dart';
import 'package:ios_samx/feature/main_app/wallet/presentation/pages/transaction_details.dart';
import 'package:ios_samx/feature/main_app/wallet/presentation/widget/wallet_transaction_item_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:magicon/magicon.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import '../../../../../core/constant/theme/custom_theme.dart';

(Color textAndIconColor, Color bgIconColor, IconData icon, String amountSign)
    setTextIconColorBgIconColorIconSignOfAmount(
        String transactionTypeCode, CustomTheme colorTheme) {
  late Color textAndIconColor;
  late Color bgIconColor;
  late IconData icon;
  late String amountSign;

  switch (transactionTypeCode) {
    case "219735":
      textAndIconColor = colorTheme.onSuccessContainer;
      bgIconColor = colorTheme.successContainer;
      icon = Magicon.moneyBillReceive;
      amountSign = "+";
      break;

    case "007200":
      textAndIconColor = colorTheme.onSuccessContainer;
      bgIconColor = colorTheme.successContainer;
      icon = Magicon.moneyConvert;
      amountSign = "+";
      break;

    case "007201":
      textAndIconColor = colorTheme.error;
      bgIconColor = colorTheme.errorContainer;
      icon = Magicon.moneyConvert;
      amountSign = "-";
      break;

    case "219734":
      textAndIconColor = colorTheme.error;
      bgIconColor = colorTheme.errorContainer;
      icon = Magicon.moneyBillSend;
      amountSign = "-";
      break;

    default:
      return (Colors.blueGrey, Colors.blueGrey, Magicon.arrowImport, "?");
  }
  return (textAndIconColor, bgIconColor, icon, amountSign);
}

class WalletTransactionItem extends StatelessWidget {
  const WalletTransactionItem({
    super.key,
    required this.walletTransactionResponseData,
  });

  final WalletTransactionResponseData walletTransactionResponseData;

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();
    final transactionTypeCode =
        walletTransactionResponseData.transactionTypeCode;
    (Color, Color, IconData, String) info =
        setTextIconColorBgIconColorIconSignOfAmount(
            transactionTypeCode, colorTheme);

    Color textAndIconColor = info.$1;
    Color bgIconColor = info.$2;
    IconData icon = info.$3;
    String amountSign = info.$4;

    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            PageTransition(
                child: TransactionDetails(
                  walletTransactionResponseData: walletTransactionResponseData,
                ),
                type: PageTransitionType.leftToRight));
      },
      child: WalletTransactionsDataWidget(
        caption: walletTransactionResponseData.transactionType,
        title:
            "${walletTransactionResponseData.persianDate.toPersianDigit()} | ${walletTransactionResponseData.time.toPersianDigit()}",
        subTitle:
            "${walletTransactionResponseData.amount.toInt().toString().toPersianDigit().seRagham()}$amountSignریال ",
        icon: icon,
        subTitleColor: textAndIconColor,
        bgColor: bgIconColor,
      ),
    ); /*  */
  }
}
