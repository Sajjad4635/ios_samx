import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'WalletWithdrawResponseData.g.dart';

@JsonSerializable(createToJson: false)
class WalletWithdrawResponseData extends Equatable {

  @JsonKey(name: 'Reference_Number')
  final String referenceNumber;

  @JsonKey(name: 'Reference_Code')
  final String referenceCode;

  @JsonKey(name: 'Status')
  final String status;

  @JsonKey(name: 'Transfer_Type')
  final String transferType;

  @JsonKey(name: 'Transfer_Date')
  final String transferDate;

  @JsonKey(name: 'Transfer_Persian_Date')
  final String transferPersianDate;

  @JsonKey(name: 'Transfer_Time')
  final String transferTime;

  @JsonKey(name: 'Amount')
  final String amount;

  @JsonKey(name: 'Iban')
  final String iBan;



  const WalletWithdrawResponseData( {
    required this.referenceNumber,
    required this.referenceCode,
    required this.status,
    required this.transferType,
    required this.transferDate,
    required this.transferPersianDate,
    required this.transferTime,
    required this.amount,
    required this.iBan,

  }
      );

  factory WalletWithdrawResponseData.fromJson(Map<String, dynamic> json) => _$WalletWithdrawResponseDataFromJson(json);

  @override
  List<Object?> get props => [
    referenceNumber,
    referenceCode,
    status,
    transferType,
    transferDate,
    transferPersianDate,
    transferTime,
    amount,
    iBan,
  ];
}
