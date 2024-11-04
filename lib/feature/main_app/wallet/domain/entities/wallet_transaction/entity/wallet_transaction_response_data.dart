import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_transaction_response_data.g.dart';

@JsonSerializable(createToJson: false)
class WalletTransactionResponseData extends Equatable {
  @JsonKey(name: "nationalCode")
  final String nationalCode;
  @JsonKey(name: "transactionType")
  final String transactionType;
  @JsonKey(name: "transferType")
  final String transferType;
  @JsonKey(name: "referenceNumber")
  final String referenceNumber;
  @JsonKey(name: "amount")
  final double amount;
  @JsonKey(name: "source")
  final String source;
  @JsonKey(name: "destination")
  final String destination;
  @JsonKey(name: "description")
  final String description;
  @JsonKey(name: "note")
  final String? note;
  @JsonKey(name: "persianDate")
  final String persianDate;
  @JsonKey(name: "date")
  final String date;
  @JsonKey(name: "time")
  final String time;

  @JsonKey(name: "transactionTypeCode")
  final String transactionTypeCode;

  const WalletTransactionResponseData(
      {required this.nationalCode,
      required this.transactionType,
      required this.transferType,
      required this.referenceNumber,
      required this.amount,
      required this.source,
      required this.destination,
      required this.description,
      required this.note,
      required this.persianDate,
      required this.date,
      required this.time,
      required this.transactionTypeCode});

  factory WalletTransactionResponseData.fromJson(Map<String, dynamic> json) =>
      _$WalletTransactionResponseDataFromJson(json);

  @override
  List<Object?> get props => [
        nationalCode,
        transactionType,
        transferType,
        referenceNumber,
        amount,
        source,
        destination,
        description,
        note,
        persianDate,
        date,
        time,
        transactionTypeCode
      ];
}
