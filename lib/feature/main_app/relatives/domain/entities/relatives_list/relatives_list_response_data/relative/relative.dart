import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'relative.g.dart';

@JsonSerializable()
class Relative extends Equatable {
  final String title;
  final int gender;
  final String id;

  const Relative({required this.title, required this.id, required this.gender});

  factory Relative.fromJson(Map<String, dynamic> json) => _$RelativeFromJson(json);

  @override
  List<Object?> get props => [title, id, gender];
}
