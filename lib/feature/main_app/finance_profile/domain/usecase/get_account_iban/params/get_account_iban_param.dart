
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_account_iban_param.g.dart';


@JsonSerializable(createFactory: false)
class GetAccountIbanParam extends Equatable {
  final String iban;
  const GetAccountIbanParam({required this.iban});

  Map<String, dynamic> toJson() => _$GetAccountIbanParamToJson(this);

  @override
  List<Object?> get props => [iban];

}