import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/errors/failures/failure.dart';
import '../../../domain/entities/download_picture/download_profile_picture_entities.dart';
import '../../../domain/usecase/download_picture/download_profile_picture_usecase.dart';
import '../../../domain/usecase/download_picture/param/download_profile_picture_param.dart';

part 'download_profile_picture_event.dart';

part 'download_profile_picture_state.dart';

part 'download_profile_picture_bloc.freezed.dart';

@lazySingleton
@injectable
class DownloadProfilePictureBloc
    extends Bloc<DownloadProfilePictureEvent, DownloadProfilePictureState> {
  final DownloadProfilePictureUseCase useCase;

  DownloadProfilePictureBloc({required this.useCase})
      : super(const DownloadProfilePictureState.initial());

  @override
  Stream<DownloadProfilePictureState> mapEventToState(
      DownloadProfilePictureEvent event) async* {
    yield* event.map(
      profilePictureCalled: (event) async* {
        try {
          yield const DownloadProfilePictureState.loading();
          final failureOrSuccess = await useCase.call(event.param);
          yield failureOrSuccess.fold(
              (failure) => DownloadProfilePictureState.loadFailure(failure),
              (success) => DownloadProfilePictureState.loadSuccess(success));
        } on DioFailure catch (ex) {
          yield DownloadProfilePictureState.loadFailure(ex);
        }
      },
    );
  }
}
