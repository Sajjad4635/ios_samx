part of 'file_list_bloc.dart';

@freezed
abstract class FileListEvent with _$FileListEvent {
  const factory FileListEvent.fileListEventCalled({required FileListParam param}) =
      _FileListEventCalled;
}