import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/profile/domain/entities/get_passport/get_passport_entities.dart';
import 'package:ios_samx/feature/main_app/profile/domain/entities/get_risk_score/get_risk_entities.dart';
import 'package:ios_samx/feature/main_app/profile/domain/entities/update_passport/update_passport_entities.dart';
import 'package:ios_samx/feature/main_app/profile/domain/entities/zipcode_detail/zipcode_entities.dart';
import 'package:ios_samx/feature/main_app/profile/domain/entities/zipcode_update/zipcode_update_entities.dart';
import 'package:ios_samx/feature/main_app/profile/domain/usecase/get_risk_score/param/get_risk_score_param.dart';
import 'package:ios_samx/feature/main_app/profile/domain/usecase/update_passport/param/update_passport_param.dart';
import 'package:ios_samx/feature/main_app/profile/domain/usecase/zipcode_detail/zipcode_detail_param/zipcode_detail_param.dart';
import 'package:ios_samx/feature/main_app/profile/domain/usecase/zipcode_update/zipcode_update_param/zipcode_update_param.dart';
import 'package:dio/dio.dart';
import 'package:dio/dio.dart';

import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';


import '../../../../../core/dio/dio_error_cp.dart';
import '../../../../../core/errors/exceptions/server_exception.dart';
import '../../../../../core/errors/failures/server_failure.dart';
import '../../domain/entities/download_picture/download_profile_picture_entities.dart';
import '../../domain/entities/get_profile/get_profile_entities.dart';
import '../../domain/entities/get_score/get_score_entity.dart';
import '../../domain/entities/get_staff/get_staff_entities.dart';
import '../../domain/entities/upload_picture/upload_profile_picture_entities.dart';
import '../../domain/repository/profile_repository.dart';
import '../../domain/usecase/download_picture/param/download_profile_picture_param.dart';
import '../../domain/usecase/get_staff/param/get_staff_param.dart';
import '../../domain/usecase/upload_picture/param/upload_profile_picture_param.dart';
import '../data_source/profile_remote_datasource.dart';

@LazySingleton(as: ProfileRepository)
class ProfileRepositoryImpl implements ProfileRepository {
  ProfileRemoteDataSource profileRemoteDataSource;

  ProfileRepositoryImpl({required this.profileRemoteDataSource});


  @override
  Future<Either<Failure, GetProfileEntities>> getProfile({required NoParams noParams}) async {
    try {
      final GetProfileEntities getProfileEntities =
          await profileRemoteDataSource.getProfile(noParams: noParams);
      return Right(getProfileEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, GetStaffEntities>> getStaff({required GetStaffParam getStaffParam}) async {
    try {
      final GetStaffEntities getStaffEntities  =  await  profileRemoteDataSource.getStaff(getStaffParam: getStaffParam) ;
      return Right(getStaffEntities);
    } on ServerException {
      return Left(ServerFailure());
    }

  }

  @override
  Future<Either<Failure, GetScoreEntity>> getScore({required NoParams noParams}) async{
    try{
      final GetScoreEntity getScoreEntity = await profileRemoteDataSource.getScore(noParams: noParams);
      return Right(getScoreEntity);

    }on ServerException {
      return Left(ServerFailure()) ;
    }


  }

  @override
  Future<Either<Failure, GetRiskScoreEntities>> getRiskScore({required GetRiskScoreParam getRiskScoreParam}) async{
    try{
      final GetRiskScoreEntities getRiskScoreEntities = await  profileRemoteDataSource.getRiskScore(getRiskScoreParam: getRiskScoreParam) ;
      return Right(getRiskScoreEntities) ;
    }on ServerException {
      return Left(ServerFailure()) ;
    }
  }


  @override
  Future<Either<Failure, DownloadProfilePictureEntity>> downloadProfilePicture({required DownloadProfilePictureParam downloadProfilePictureParam}) async{
    try{
      final DownloadProfilePictureEntity profilePictureEntity = await profileRemoteDataSource.downloadProfilePicture(downloadProfilePictureParam: downloadProfilePictureParam);
      return Right(profilePictureEntity);

    }on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, UploadProfilePictureEntity>> uploadProfilePicture({required UploadProfilePictureParams uploadProfilePictureParams}) async{
    try{
      final UploadProfilePictureEntity uploadProfilePictureEntity = await profileRemoteDataSource.uploadProfilePicture(param: uploadProfilePictureParams) ;
      return Right(uploadProfilePictureEntity);

    }on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, GetPassportEntities>> getPassport({required NoParams noParams})async {
    try {
      final GetPassportEntities getPassportEntities =
      await profileRemoteDataSource.getPassport(noParams: noParams);
      return Right(getPassportEntities);
    } on ServerException {
      return Left(ServerFailure());
    }

  }

  @override
  Future<Either<Failure, ZipcodeEntities>> postZipcode({required ZipcodeDetailParam zipcodeDetailParam}) async {
    try{
      final ZipcodeEntities zipcodeEntities = await  profileRemoteDataSource.zipcodeDetail(zipcodeDetailParam: zipcodeDetailParam) ;
      return Right(zipcodeEntities) ;
    }on ServerException {
      return Left(ServerFailure()) ;
    }
  }

  @override
  Future<Either<Failure, UpdatePassportEntities>> updatePassport({required UpdatePassportParam updatePassportParam}) async {
    try{
      final UpdatePassportEntities updatePassportEntities = await  profileRemoteDataSource.updatePassport(updatePassportParam :updatePassportParam ) ;
      return Right(updatePassportEntities) ;
    }on ServerException {
      return Left(ServerFailure()) ;
    }
  }

  @override
  Future<Either<Failure, ZipcodeUpdateEntities>> updateZipcode({required ZipcodeUpdateParam zipcodeUpdateParam}) async{
    try{
      final ZipcodeUpdateEntities zipcodeUpdateEntities = await profileRemoteDataSource.updateZipcode(zipcodeUpdateParam: zipcodeUpdateParam);
      return Right(zipcodeUpdateEntities);
    }on ServerException {
      return Left(ServerFailure()) ;
    }
  }


}
