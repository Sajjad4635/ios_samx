import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plaque_response_data.g.dart';

@JsonSerializable()
class Plaque extends Equatable {
  final int region;
  final String letter;
  final int segment1;
  final int segment2;
  final int letterNumber;

  const Plaque({
    required this.region,
    required this.letter,
    required this.segment1,
    required this.segment2,
    required this.letterNumber,
  });

  factory Plaque.fromJson(Map<String, dynamic> json) =>
      _$PlaqueFromJson(json);

  @override
  List<Object?> get props => [region, letter, segment1, segment2, letterNumber];
}
