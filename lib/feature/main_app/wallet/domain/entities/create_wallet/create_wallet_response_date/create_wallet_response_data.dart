import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_wallet_response_data.g.dart';

@JsonSerializable(createToJson: false)
class CreateWalletResponseData extends Equatable {
  @JsonKey(name: "Cash_Wallet_Segment_Id")
  final String cashWalletSegmentId;
  @JsonKey(name: "Cash_Wallet_Code")
  final String cashWalletCode;

  const CreateWalletResponseData({required this.cashWalletCode, required this.cashWalletSegmentId});

  factory CreateWalletResponseData.fromJson(Map<String, dynamic> json) => _$CreateWalletResponseDataFromJson(json);
  
  @override
  List<Object?> get props => [cashWalletSegmentId, cashWalletCode];
}
