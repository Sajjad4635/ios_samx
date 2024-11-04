import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/feature/main_app/profile/domain/entities/upload_picture/upload_profile_picture_entities.dart';
import 'package:ios_samx/feature/main_app/profile/domain/usecase/upload_picture/param/upload_profile_picture_param.dart';

import '../../../../../../core/errors/failures/failure.dart';
import '../../../domain/usecase/upload_picture/upload_profile_picture_usecase.dart';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'upload_profile_picture_event.dart';
part 'upload_profile_picture_state.dart';
part 'upload_profile_picture_bloc.freezed.dart';

@lazySingleton
@injectable
class UploadProfilePictureBloc extends Bloc<UploadProfilePictureEvent, UploadProfilePictureState> {

  UploadProfilePictureUseCase uploadUseCase ;

  UploadProfilePictureBloc({required this.uploadUseCase}) : super(const UploadProfilePictureState.initial())  ;

  @override
  Stream<UploadProfilePictureState> mapEventToState(UploadProfilePictureEvent event) async*{
    yield* event.map(uploadPictureEventCalled: (event) async*{
      try{
        yield const UploadProfilePictureState.loading();
        final failureOrSuccess = await uploadUseCase.call(event.uploadProfilePictureParams);
        yield failureOrSuccess.fold(
                (failure) => UploadProfilePictureState.loadFailure(failure),
                (success) => UploadProfilePictureState.loadSuccess(success)
        );
      } on DioFailure catch (ex){
        yield UploadProfilePictureState.loadFailure(ex);
      }
    },) ;
  }

}
