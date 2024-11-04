import 'package:ios_samx/feature/main_app/minio/domain/usecase/object_download/param/object_download_param.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/errors/failures/dio_failure.dart';
import '../../../../../../core/errors/failures/failure.dart';
import '../../../domain/entities/object_download/object_download_entities.dart';
import '../../../domain/usecase/object_download/object_download_usecase.dart';

part 'object_download_state.dart';
part 'object_download_event.dart';
part 'object_download_bloc.freezed.dart';

@lazySingleton
@injectable
class ObjectDownloadBloc extends Bloc<ObjectDownloadBlocEvent, ObjectDownloadBlocState>{
  final ObjectDownloadUseCase objectDownloadUseCase ;
  ObjectDownloadBloc({required this.objectDownloadUseCase}) : super (const ObjectDownloadBlocState.initial());


  @override
  Stream<ObjectDownloadBlocState> mapEventToState(ObjectDownloadBlocEvent event) async* {
    yield* event.map(objectDownloadEventCalled: (e) async* {
      try {
        yield const ObjectDownloadBlocState.loading();
        final failureOrSuccess = await objectDownloadUseCase.call(e.objectDownloadParam);
        yield failureOrSuccess.fold(
              (failure) => ObjectDownloadBlocState.loadFailure(failure),
              (success) => ObjectDownloadBlocState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield ObjectDownloadBlocState.loadFailure(e);
      }
    });
  }

}