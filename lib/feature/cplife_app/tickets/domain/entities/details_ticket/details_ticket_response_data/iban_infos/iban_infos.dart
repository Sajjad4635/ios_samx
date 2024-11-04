import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'iban_infos.g.dart';

@JsonSerializable(createToJson: false)
class IbanInfo extends Equatable {
  final String iban;
  final List owner;

  const IbanInfo({required this.iban, required this.owner});

  factory IbanInfo.fromJson(Map<String, dynamic> json) => _$IbanInfoFromJson(json);
  
  @override
  List<Object?> get props => [iban, owner];


}
