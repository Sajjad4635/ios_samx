import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_default_param.g.dart';

@JsonSerializable(createFactory: false)
class AccountDefaultParam extends Equatable {
  final String iban;

  const AccountDefaultParam({required this.iban});

  Map<String, dynamic> toJson() => _$AccountDefaultParamToJson(this);

  @override
  List<Object?> get props => [iban];
}
