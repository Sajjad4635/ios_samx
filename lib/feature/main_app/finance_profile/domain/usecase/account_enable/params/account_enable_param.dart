import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_enable_param.g.dart';

@JsonSerializable(createFactory: false)
class AccountEnableParam extends Equatable {
  final String iban;
  final bool activationStatus ;

  const AccountEnableParam( {required this.iban , required this.activationStatus});

  Map<String, dynamic> toJson() => _$AccountEnableParamToJson(this);

  @override
  List<Object?> get props => [iban , activationStatus];
}
