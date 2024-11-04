import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_staff_param.g.dart';

@JsonSerializable(createFactory: false)
class GetStaffParam extends Equatable {
  final String username;

  const GetStaffParam({required this.username});

  Map<String, dynamic> toJson() => _$GetStaffParamToJson(this);

  @override
  List<Object?> get props => [username];
}
