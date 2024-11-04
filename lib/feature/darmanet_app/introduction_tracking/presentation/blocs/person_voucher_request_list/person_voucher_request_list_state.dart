part of 'person_voucher_request_list_bloc.dart';

@freezed
class PersonVoucherRequestListState with _$PersonVoucherRequestListState {
  const factory PersonVoucherRequestListState.initial() = _PersonVoucherRequestListStateInitial;
  const factory PersonVoucherRequestListState.loadFailure(Failure failure) = _PersonVoucherRequestListStateLoadFailure;
  const factory PersonVoucherRequestListState.loading() = PersonVoucherRequestListStateLoading;
  const factory PersonVoucherRequestListState.loadSuccess(PersonVoucherRequestListEntities personVoucherRequestListEntities) =
      _PersonVoucherRequestListStateLoadSuccess;
}