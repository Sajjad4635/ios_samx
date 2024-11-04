import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/minio/domain/usecase/object_download/param/object_download_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../entities/object_download/object_download_entities.dart';
import '../../repository/minio_repository.dart';

@injectable
class ObjectDownloadUseCase
    implements UseCase<ObjectDownloadEntities, ObjectDownloadParam> {
  final MinioRepository minioRepository;

  ObjectDownloadUseCase({required this.minioRepository});

  @override
  Future<Either<Failure, ObjectDownloadEntities>> call(
      ObjectDownloadParam params) async {
    return await minioRepository.objectDownload(objectDownloadParam: params);
  }
}
