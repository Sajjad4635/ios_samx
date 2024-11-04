import 'package:ios_samx/feature/main_app/minio/domain/usecase/authenticate/param/authenticate_param.dart';
import 'package:either_dart/either.dart';

import '../../../../../core/errors/failures/failure.dart';
import '../entities/authenticate/authenticate_entities.dart';
import '../entities/get_bucket/get_bucket_entities.dart';
import '../entities/get_object_list/get_object_list_entities.dart';
import '../entities/object_download/object_download_entities.dart';
import '../entities/object_remove/object_remove_entities.dart';
import '../entities/object_upload/object_upload_entities.dart';
import '../usecase/get_bucket/param/get_bucket_param.dart';
import '../usecase/get_object_list/param/get_object_list_param.dart';
import '../usecase/object_download/param/object_download_param.dart';
import '../usecase/object_remove/param/object_remove_param.dart';
import '../usecase/object_upload/param/object_upload_param.dart';

abstract class MinioRepository {
  Future<Either<Failure, AuthenticateEntities>> authenticate({required AuthenticateParam authenticateParam }) ;
  Future<Either<Failure, GetBucketEntities>> getBucketList({required GetBucketParam getBucketParam});
  Future<Either<Failure, GetObjectListEntities>> getObjectList({required GetObjectListParam getObjectListParam});
  Future<Either<Failure , ObjectDownloadEntities>> objectDownload ({required ObjectDownloadParam objectDownloadParam});
  Future<Either<Failure, ObjectUploadEntities>> objectUpload ({required ObjectUploadParam objectUploadParam}) ;
  Future<Either<Failure , ObjectRemoveEntities>> removeObject ({required ObjectRemoveParam objectRemoveParam}) ;
}