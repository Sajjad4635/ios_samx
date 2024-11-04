
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/minio/domain/usecase/get_bucket/param/get_bucket_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../entities/get_bucket/get_bucket_entities.dart';
import '../../repository/minio_repository.dart';

@injectable
class GetBucketUseCase implements UseCase<GetBucketEntities, GetBucketParam> {
  final MinioRepository minioRepository ;

  GetBucketUseCase({required this.minioRepository});

  @override
  Future<Either<Failure, GetBucketEntities>> call(GetBucketParam params) async {
      return await minioRepository.getBucketList(getBucketParam: params) ;
  }


}
