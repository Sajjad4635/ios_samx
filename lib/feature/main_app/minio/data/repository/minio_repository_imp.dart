import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/minio/domain/entities/authenticate/authenticate_entities.dart';
import 'package:ios_samx/feature/main_app/minio/domain/entities/get_bucket/get_bucket_entities.dart';
import 'package:ios_samx/feature/main_app/minio/domain/entities/get_object_list/get_object_list_entities.dart';
import 'package:ios_samx/feature/main_app/minio/domain/entities/object_download/object_download_entities.dart';
import 'package:ios_samx/feature/main_app/minio/domain/entities/object_remove/object_remove_entities.dart';
import 'package:ios_samx/feature/main_app/minio/domain/entities/object_upload/object_upload_entities.dart';
import 'package:ios_samx/feature/main_app/minio/domain/usecase/authenticate/param/authenticate_param.dart';
import 'package:ios_samx/feature/main_app/minio/domain/usecase/get_bucket/param/get_bucket_param.dart';
import 'package:ios_samx/feature/main_app/minio/domain/usecase/get_object_list/param/get_object_list_param.dart';
import 'package:ios_samx/feature/main_app/minio/domain/usecase/object_download/param/object_download_param.dart';
import 'package:ios_samx/feature/main_app/minio/domain/usecase/object_remove/param/object_remove_param.dart';
import 'package:ios_samx/feature/main_app/minio/domain/usecase/object_upload/param/object_upload_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/errors/exceptions/server_exception.dart';
import '../../../../../core/errors/failures/server_failure.dart';
import '../../domain/repository/minio_repository.dart';
import '../data_source/minio_remote_datasource.dart';

@LazySingleton(as: MinioRepository)
class MinioRepositoryImpl implements MinioRepository {
  MinioRemoteDataSource minioRemoteDataSource;

  MinioRepositoryImpl({required this.minioRemoteDataSource});

  @override
  Future<Either<Failure, GetBucketEntities>> getBucketList(
      {required GetBucketParam getBucketParam}) async {
    try {
      final GetBucketEntities getBucketEntities =
          await minioRemoteDataSource.getBucket(getBucketParam: getBucketParam);
      return Right(getBucketEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, AuthenticateEntities>> authenticate(
      {required AuthenticateParam authenticateParam}) async {
    try {
      final AuthenticateEntities authenticateEntities =
          await minioRemoteDataSource.authenticate(
              authenticateParam: authenticateParam);

      return Right(authenticateEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, GetObjectListEntities>> getObjectList({required GetObjectListParam getObjectListParam}) async {
    try{
      final GetObjectListEntities getObjectListEntities = await minioRemoteDataSource.getObjectList(getObjectListParam: getObjectListParam);
      return Right(getObjectListEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, ObjectDownloadEntities>> objectDownload({required ObjectDownloadParam objectDownloadParam}) async {
    try{
      final ObjectDownloadEntities objectDownloadEntities = await minioRemoteDataSource.objectDownload(objectDownloadParam: objectDownloadParam);
      return Right(objectDownloadEntities);
    }on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, ObjectUploadEntities>> objectUpload({required ObjectUploadParam objectUploadParam}) async {
    try{
      final ObjectUploadEntities objectUploadEntities = await minioRemoteDataSource.objectUpload(objectUploadParam: objectUploadParam);
      return Right(objectUploadEntities) ;
    }on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, ObjectRemoveEntities>> removeObject({required ObjectRemoveParam objectRemoveParam})async  {
    try{
      final objectRemoveEntities = await minioRemoteDataSource.objectRemove(objectRemoveParam: objectRemoveParam);
      return Right(objectRemoveEntities) ;
    }on ServerException {
      return Left(ServerFailure());
    }
  }
}
