import 'package:ios_samx/core/constant/app_colors.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/wallet_transaction/entity/wallet_transaction_response_data.dart';
import 'package:ios_samx/feature/main_app/wallet/presentation/widget/wallet_transaction_item.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class WalletTransactionListLoading extends StatelessWidget {
  const WalletTransactionListLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.lightWhite,
      child: Skeletonizer(
        enabled: true,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          itemBuilder: (context, index) => const WalletTransactionItem(
            walletTransactionResponseData: WalletTransactionResponseData(
              nationalCode: 'test',
              transactionType: 'test',
              transferType: 'test',
              referenceNumber: 'test',
              amount: 5000000,
              source: 'test',
              destination: 'test',
              description: 'test',
              note: 'test',
              persianDate: '2024-01-15T08:59:57.546174',
              date: '2024-01-15T08:59:57.546174',
              time: '2024-01-15T08:59:57.546174',
              transactionTypeCode: '',
            ),
          ),
        ),
      ),
    );
  }
}
