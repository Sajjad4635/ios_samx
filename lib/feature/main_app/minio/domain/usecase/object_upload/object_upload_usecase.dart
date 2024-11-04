import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/minio/domain/usecase/object_upload/param/object_upload_param.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

import '../../entities/object_upload/object_upload_entities.dart';
import '../../repository/minio_repository.dart';

@injectable


class ObjectUploadUseCase implements UseCase<ObjectUploadEntities, ObjectUploadParam>{
  final MinioRepository minioRepository ;

  ObjectUploadUseCase({required this.minioRepository});

  @override
  Future<Either<Failure,ObjectUploadEntities>> call (ObjectUploadParam params ) async {
      return await minioRepository.objectUpload(objectUploadParam: params);
  }


}
