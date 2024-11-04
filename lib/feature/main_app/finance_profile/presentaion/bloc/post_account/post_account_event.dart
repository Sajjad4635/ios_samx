
part  of 'post_account_bloc.dart';

@freezed
class PostAccountEvent with _$PostAccountEvent {
  const factory PostAccountEvent.postAccountEventCalled({required PostAccountParam postAccountParam}) = _PostAccountEventCalled;
}