
import 'package:ios_samx/feature/main_app/minio/domain/entities/authenticate/authenticate_entities.dart';
import 'package:ios_samx/feature/main_app/minio/domain/usecase/authenticate/param/authenticate_param.dart';
import 'package:ios_samx/feature/main_app/minio/domain/usecase/get_object_list/param/get_object_list_param.dart';
import 'package:ios_samx/feature/main_app/minio/domain/usecase/object_remove/param/object_remove_param.dart';
import 'package:ios_samx/feature/main_app/minio/domain/usecase/object_upload/param/object_upload_param.dart';

import '../../domain/entities/get_bucket/get_bucket_entities.dart';
import '../../domain/entities/get_object_list/get_object_list_entities.dart';
import '../../domain/entities/object_download/object_download_entities.dart';
import '../../domain/entities/object_remove/object_remove_entities.dart';
import '../../domain/entities/object_upload/object_upload_entities.dart';
import '../../domain/usecase/get_bucket/param/get_bucket_param.dart';
import '../../domain/usecase/object_download/param/object_download_param.dart';

abstract class MinioRemoteDataSource {
  Future<AuthenticateEntities> authenticate({required AuthenticateParam authenticateParam}) ;
  Future<GetBucketEntities> getBucket({required GetBucketParam getBucketParam}) ;
  Future<GetObjectListEntities> getObjectList({required GetObjectListParam getObjectListParam}) ;
  Future<ObjectDownloadEntities> objectDownload ({required ObjectDownloadParam objectDownloadParam});
  Future<ObjectRemoveEntities> objectRemove ({required ObjectRemoveParam objectRemoveParam});
  Future<ObjectUploadEntities> objectUpload ({required ObjectUploadParam objectUploadParam}) ;

}