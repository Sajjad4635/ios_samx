import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plaque_request.g.dart';

@JsonSerializable(createFactory: false)

class PlaqueRequest extends Equatable {
  final String region;

  final String letter;

  final String segment1;

  final String segment2;

  const PlaqueRequest(
      {required this.region,
      required this.letter,
      required this.segment1,
      required this.segment2});

  Map<String, dynamic> toJson() => _$PlaqueRequestToJson(this);


  @override
  List<Object?> get props => [region, letter, segment1, segment2];
}
