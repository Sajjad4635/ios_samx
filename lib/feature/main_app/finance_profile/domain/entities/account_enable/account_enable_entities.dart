import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../../core/dio/dio_response_cp.dart';

part 'account_enable_entities.g.dart';

@JsonSerializable(createToJson: false)
class AccountEnableEntities extends Equatable {
  final DioResponseCPLife dioResponseCPLife;

  const AccountEnableEntities({required this.dioResponseCPLife});

  @override
  List<Object?> get props => [dioResponseCPLife];
}
