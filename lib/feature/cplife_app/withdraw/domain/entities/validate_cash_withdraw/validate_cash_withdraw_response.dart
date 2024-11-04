import 'package:equatable/equatable.dart';
import 'package:ios_samx/core/dio/dio_response_cp.dart';

class ValidateCashWithdrawEntities extends Equatable {
  final DioResponseCPLife dioResponseCPLife;

  const ValidateCashWithdrawEntities({required this.dioResponseCPLife});

  @override
  List<Object?> get props => [DioResponseCPLife];
}
