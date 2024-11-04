import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_account_response_data.g.dart';

@JsonSerializable(createToJson: false)
class GetAccountResponseData extends Equatable {
  final String iban;
  final bool isIbanActive;
  final bool isActive;
  final String bank;
  final bool isDefault;

  const GetAccountResponseData(
      {required this.iban,
      required this.isIbanActive,
      required this.isActive,
      required this.bank,
      required this.isDefault});

  factory GetAccountResponseData.fromJson(Map<String, dynamic> json) =>
      _$GetAccountResponseDataFromJson(json);

  @override
  List<Object?> get props => [iban, isIbanActive, isActive, bank, isDefault];
}
