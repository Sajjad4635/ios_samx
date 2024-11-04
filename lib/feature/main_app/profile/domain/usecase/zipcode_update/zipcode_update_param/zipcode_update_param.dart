import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'zipcode_update_param.g.dart';


@JsonSerializable(createFactory: false)
class ZipcodeUpdateParam extends Equatable {

  @JsonKey(name : "postCode")
  final String postCode ;

  @JsonKey(name : "address")
  final String? address ;

  const ZipcodeUpdateParam({required this.postCode ,  this.address});
  Map<String, dynamic> toJson() => _$ZipcodeUpdateParamToJson(this);

  @override

  List<Object?> get props => [postCode,address];

}