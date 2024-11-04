part  of 'post_account_bloc.dart';

@freezed
class PostAccountState with _$PostAccountState {
  const factory PostAccountState.initial() = _PostAccountStateInitial ;
  const factory PostAccountState.loadFailure(Failure failure ) = _PostAccountStateLoadFailure;
  const factory PostAccountState.loading() = PostAccountStateLoading ;
  const factory PostAccountState.loadSuccess (PostAccountEntities postAccountEntities ) = _PostAccountStateLoadSuccess ;
}