import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/dio/dio_response_cp.dart';

part 'account_default_entities.g.dart';


@JsonSerializable(createToJson: false)
class AccountDefaultEntities extends Equatable {
  final DioResponseCPLife dioResponseCPLife;

  const AccountDefaultEntities({required this.dioResponseCPLife});

  @override
  List<Object?> get props => [dioResponseCPLife];
}
