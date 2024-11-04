import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_account_iban_response_data.g.dart';


@JsonSerializable(createToJson: false)

class GetAccountIbanResponseData extends Equatable {
  final bool isActive;

  const GetAccountIbanResponseData({required this.isActive});

  factory GetAccountIbanResponseData.fromJson(Map<String, dynamic> json) => _$GetAccountIbanResponseDataFromJson(json);
  @override
  List<Object?> get props => [isActive];
}