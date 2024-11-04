import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_card_param.g.dart';

@JsonSerializable(createFactory: false)
class AddCardParam extends Equatable {
  final String title;
  final String birthDate;
  final String pan;
  final String phoneNumber;

  const AddCardParam(
      {required this.title,
      required this.birthDate,
      required this.pan,
      required this.phoneNumber});

  Map<String, dynamic> toJson() => _$AddCardParamToJson(this);

  @override
  List<Object?> get props => [title,birthDate,pan,phoneNumber];
}
