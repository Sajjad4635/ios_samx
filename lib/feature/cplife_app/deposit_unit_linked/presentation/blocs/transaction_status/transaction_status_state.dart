part of 'transaction_status_bloc.dart';

@freezed
class TransactionStatusState with _$TransactionStatusState {
  const factory TransactionStatusState.initial() = _TransactionStatusInitial;
  const factory TransactionStatusState.loadFailure(Failure failure) = _TransactionStatusLoadFailure;
  const factory TransactionStatusState.loading() = TransactionStatusLoading;
  const factory TransactionStatusState.loadSuccess(TransactionStatusResponseEntity transactionStatusResponseEntity) =
      _TransactionStatusLoadSuccess;
}