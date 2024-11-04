import 'package:ios_samx/core/dio/dio_response_unitlinked.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/domain/entities/transaction_status/transaction_status_response_data/transaction_status_data.dart';
import 'package:equatable/equatable.dart';

class TransactionStatusResponseEntity extends Equatable {
  final DioResponseUnitLinked dioResponse;
  late final TransActionsStatusData transActionsStatusData;

  TransactionStatusResponseEntity({required this.dioResponse}) {
    transActionsStatusData =
        TransActionsStatusData.fromJson(dioResponse.data);
  }

  @override
  List<Object?> get props => [dioResponse, transActionsStatusData];
}
