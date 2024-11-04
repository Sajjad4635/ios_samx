
import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/file_list/file_list_entities.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/file_list/file_list_usecase.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/file_list/param/file_list_param.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'file_list_bloc.freezed.dart';
part 'file_list_event.dart';
part 'file_list_state.dart';

@lazySingleton
@injectable
class FileListBloc extends Bloc<FileListEvent, FileListState> {
  final FileListUseCase fileListUseCase;
  FileListBloc({required this.fileListUseCase}) : super(const FileListState.initial());

  @override
  Stream<FileListState> mapEventToState(FileListEvent event) async* {
    yield* event.map(fileListEventCalled: (e) async* {
      try {
        yield const FileListState.loading();
        final failureOrSuccess = await fileListUseCase.call(e.param);
        yield failureOrSuccess.fold(
          (failure) => FileListState.loadFailure(failure),
          (success) => FileListState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield FileListState.loadFailure(e);
      } 
    });
  }
}