import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bucket_response.g.dart';

@JsonSerializable(createToJson: false)

class BucketResponse extends Equatable {
  final String name;
  final String creationDate;

  const BucketResponse(
      {required this.name,
        required this.creationDate,
      });

  factory BucketResponse.fromJson(Map<String, dynamic> json) =>
      _$BucketResponseFromJson(json);

  @override
  List<Object?> get props => [name, creationDate];
}
