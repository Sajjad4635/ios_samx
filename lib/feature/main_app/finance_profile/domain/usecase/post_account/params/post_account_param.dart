import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_account_param.g.dart';

@JsonSerializable(createFactory: false)
class PostAccountParam extends Equatable {
  final String iban;
  final bool isDefault;

  const PostAccountParam({required this.iban, required this.isDefault});

  Map<String, dynamic> toJson() => _$PostAccountParamToJson(this);

  @override
  List<Object?> get props => [iban, isDefault];
}
