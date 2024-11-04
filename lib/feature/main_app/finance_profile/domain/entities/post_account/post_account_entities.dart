import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/dio/dio_response_cp.dart';

part 'post_account_entities.g.dart';

@JsonSerializable(createToJson: false)
class PostAccountEntities extends Equatable {

  final DioResponseCPLife dioResponseCPLife;

 const  PostAccountEntities({required this.dioResponseCPLife});

  @override
  List<Object?> get props => [dioResponseCPLife];



}