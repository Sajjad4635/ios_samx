import 'package:ios_samx/core/dio/dio_response_unitlinked.dart';
import 'package:ios_samx/feature/cplife_app/withdraw_unitlinked/domain/entities/withdraw_unitlinked/withdraw_unitlinked_response_data/withdraw_unitlinked_response_data.dart';
import 'package:equatable/equatable.dart';

class CreateWithdrawUnitLinkedEntities extends Equatable {
  final DioResponseUnitLinked dioResponse;
  late final WithdrawUnitlinkedResponseData withdrawUnitlinkedResponseData;

  CreateWithdrawUnitLinkedEntities({required this.dioResponse}) {
    withdrawUnitlinkedResponseData = WithdrawUnitlinkedResponseData.fromJson(dioResponse.data);
  }
  
  @override
  List<Object?> get props => [dioResponse, withdrawUnitlinkedResponseData];
}
