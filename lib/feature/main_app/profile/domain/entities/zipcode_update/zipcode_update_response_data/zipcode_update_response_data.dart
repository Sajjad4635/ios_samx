import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'zipcode_update_response_data.g.dart';

@JsonSerializable(createToJson: false)
class ZipCodeUpdateResponseData extends Equatable {
    final dynamic sampleData ;

    const ZipCodeUpdateResponseData(this.sampleData);

  factory ZipCodeUpdateResponseData.fromJson(Map<String, dynamic> json) =>
      _$ZipCodeUpdateResponseDataFromJson(json);

  @override
  List<Object?> get props => [sampleData] ;
}