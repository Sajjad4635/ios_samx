
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'zipcode_response_data.g.dart';

@JsonSerializable(createToJson: false)
class ZipcodeResponseData extends Equatable {

  final String? address;
  final String? street;
  final String? province;
  final String? district;

  const ZipcodeResponseData({ this.address,  this.street,  this.province,  this.district});

  factory ZipcodeResponseData.fromJson(Map<String, dynamic> json) =>
      _$ZipcodeResponseDataFromJson(json);


  @override
  List<Object?> get props => [address ,street ,province ,district];
}