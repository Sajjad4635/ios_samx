
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/minio/domain/usecase/get_object_list/param/get_object_list_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/usecases/usecase.dart';
import '../../entities/get_object_list/get_object_list_entities.dart';
import '../../repository/minio_repository.dart';

@injectable
class GetObjectListUseCase implements UseCase<GetObjectListEntities, GetObjectListParam>{
final MinioRepository minioRepository ;

  GetObjectListUseCase({required this.minioRepository});

  @override
  Future<Either<Failure, GetObjectListEntities>> call(GetObjectListParam params) async {
      return await minioRepository.getObjectList(getObjectListParam: params);

  }

}