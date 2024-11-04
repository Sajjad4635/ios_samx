import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_wallet_param.g.dart';

@JsonSerializable(createFactory: false)
class CreateWalletParam extends Equatable {
  final String nationalCode;
  const CreateWalletParam({required this.nationalCode});

  Map<String, dynamic> toJson() => _$CreateWalletParamToJson(this); 

  @override
  List<Object?> get props => [nationalCode];
}
