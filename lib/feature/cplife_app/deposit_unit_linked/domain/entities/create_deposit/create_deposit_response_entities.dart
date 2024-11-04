import 'package:ios_samx/core/dio/dio_response_unitlinked.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/domain/entities/create_deposit/create_deposit_response_data/create_deposit_response_data.dart';
import 'package:equatable/equatable.dart';

class CreateDepositResponseEntities extends Equatable {
  final DioResponseUnitLinked dioResponse;
   late final CreateDepositResponseData createDepositResponseData;

   CreateDepositResponseEntities({required this.dioResponse}) {
    createDepositResponseData = CreateDepositResponseData.fromJson(dioResponse.data);
  }

  @override
  List<Object?> get props => [dioResponse, createDepositResponseData];
}
