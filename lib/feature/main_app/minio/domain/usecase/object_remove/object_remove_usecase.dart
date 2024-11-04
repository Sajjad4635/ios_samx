import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/minio/domain/usecase/object_remove/param/object_remove_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../entities/object_remove/object_remove_entities.dart';
import '../../repository/minio_repository.dart';

@injectable

class ObjectRemoveUseCase implements UseCase<ObjectRemoveEntities,ObjectRemoveParam >{
  final MinioRepository minioRepository ;

  ObjectRemoveUseCase({required this.minioRepository});

  @override
  Future<Either<Failure, ObjectRemoveEntities>> call(ObjectRemoveParam params) async{
      return await minioRepository.removeObject(objectRemoveParam: params)  ;
  }
}