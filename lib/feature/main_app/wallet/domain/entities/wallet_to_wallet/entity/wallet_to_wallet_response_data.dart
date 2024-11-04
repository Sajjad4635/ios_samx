import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'wallet_to_wallet_response_data.g.dart';

@JsonSerializable(createToJson: false)
class WalletToWalletResponseData extends Equatable {
  @JsonKey(name: "Reference_Number")
  final String referenceNumber;
  @JsonKey(name: "Transfer_Date")
  final String transferDate;
  @JsonKey(name: "Transfer_Persian_Date")
  final String transferPersianDate;
  @JsonKey(name: "Transfer_Time")
  final String transferTime;

  const WalletToWalletResponseData({
    required this.referenceNumber,
    required this.transferDate,
    required this.transferPersianDate,
    required this.transferTime,
  });

  factory WalletToWalletResponseData.fromJson(Map<String, dynamic> json) => _$WalletToWalletResponseDataFromJson(json);

  @override
  List<Object?> get props => [
        referenceNumber,
        referenceNumber,
        transferDate,
        transferPersianDate,
        transferTime,
      ];
}
