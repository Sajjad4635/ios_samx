import 'package:ios_samx/feature/cplife_app/loan/domain/entities/register_loan/register_loan_response_data/register_loan_response_data.dart';
import 'package:equatable/equatable.dart';
import 'package:ios_samx/core/dio/dio_response_cp.dart';

class RegisterLoanResponseEntities extends Equatable {
  final DioResponseCPLife dioResponseCPLife;
  late final RegisterLoanResponseData registerLoanResponseData;

  RegisterLoanResponseEntities(this.dioResponseCPLife) {
    registerLoanResponseData = RegisterLoanResponseData.fromJson(dioResponseCPLife.data);
  }

  @override
  List<Object?> get props => [];
}
