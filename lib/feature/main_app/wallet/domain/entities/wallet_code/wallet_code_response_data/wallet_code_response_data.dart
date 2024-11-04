import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'wallet_code_response_data.g.dart';

@JsonSerializable(createToJson: false)
class WalletCodeResponseData extends Equatable {

  final String walletCode;
  final String segmentId;


  const WalletCodeResponseData(
      {
      required this.walletCode,
      required this.segmentId,
      });

  factory WalletCodeResponseData.fromJson (Map<String, dynamic> json) => _$WalletCodeResponseDataFromJson(json);

  @override
  List<Object?> get props => [
    walletCode,
    segmentId,
  ];
}