part of 'file_list_bloc.dart';

@freezed
class FileListState with _$FileListState {
  const factory FileListState.initial() = _FileListStateInitial;
  const factory FileListState.loadFailure(Failure failure) = _FileListStateLoadFailure;
  const factory FileListState.loading() = FileListStateLoading;
  const factory FileListState.loadSuccess(FileListEntities fileListEntities) =
      _FileListStateLoadSuccess;
}