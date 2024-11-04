import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'wallet_deposit_result_response_data.g.dart';

@JsonSerializable(createToJson: false)
class WalletDepositResultResponseData extends Equatable {

  final bool isSuccess;
  final String date;
  final String time;
  final String? securePan;
  final String? traceId;
  final int amount;


  const WalletDepositResultResponseData(
      {
      required this.isSuccess,
      required this.date,
      required this.time,
               this.securePan,
               this.traceId,
      required this.amount,
      });

  factory WalletDepositResultResponseData.fromJson (Map<String, dynamic> json) => _$WalletDepositResultResponseDataFromJson(json);

  @override
  List<Object?> get props => [
    isSuccess,
    date,
    time,
    securePan,
    traceId,
    amount
  ];
}
