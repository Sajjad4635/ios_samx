import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/profile/domain/repository/profile_repository.dart';
import 'package:ios_samx/feature/main_app/profile/domain/usecase/download_picture/param/download_profile_picture_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../entities/download_picture/download_profile_picture_entities.dart';

@injectable
class DownloadProfilePictureUseCase implements UseCase<DownloadProfilePictureEntity, DownloadProfilePictureParam> {
  final ProfileRepository repository ;

  DownloadProfilePictureUseCase({required this.repository});

  @override
  Future<Either<Failure, DownloadProfilePictureEntity>> call(
      DownloadProfilePictureParam params) async {

    return await repository.downloadProfilePicture(downloadProfilePictureParam: params);


  }
}
