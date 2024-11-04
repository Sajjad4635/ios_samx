import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_relatives_params.g.dart';

@JsonSerializable(createFactory: false)
class GetRelativesParams extends Equatable{

  final String nationalCode;

  const GetRelativesParams({required this.nationalCode});


  @override
  List<Object?> get props => [nationalCode];

}