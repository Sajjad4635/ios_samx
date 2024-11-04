part of 'transaction_status_bloc.dart';

@freezed
abstract class TransactionStatusEvent with _$TransactionStatusEvent {
  const factory TransactionStatusEvent.transactionStatusEventCalled(TransactionStatusParam param) = _TransactionStatusEventCalled;
}