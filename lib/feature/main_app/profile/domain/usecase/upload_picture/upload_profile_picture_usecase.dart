
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/profile/domain/entities/upload_picture/upload_profile_picture_entities.dart';
import 'package:ios_samx/feature/main_app/profile/domain/repository/profile_repository.dart';
import 'package:ios_samx/feature/main_app/profile/domain/usecase/upload_picture/param/upload_profile_picture_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class UploadProfilePictureUseCase implements UseCase<UploadProfilePictureEntity, UploadProfilePictureParams>{
  ProfileRepository repository ;

  UploadProfilePictureUseCase({required this.repository});

  @override
  Future<Either<Failure, UploadProfilePictureEntity>> call(UploadProfilePictureParams params) async {
    return await repository.uploadProfilePicture(uploadProfilePictureParams: params);
  }

}