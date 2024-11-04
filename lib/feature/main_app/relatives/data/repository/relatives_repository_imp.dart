import 'package:ios_samx/core/errors/exceptions/server_exception.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/errors/failures/server_failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/entities/delete_relative/delete_relative_entities.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/entities/edit_relative/edit_relative_entities.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/entities/register_wihout_otp/register_without_otp_entities.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/entities/relative/get_relative_entities.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/delete_relative/params/delete_relative_param.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/edit_relative/params/edit_relative_param.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/get_relative_list/params/get_relatives_params.dart';
import 'package:ios_samx/feature/main_app/relatives/data/data_source/relatives_remote_data_source.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/entities/add_relative/add_relative_entities.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/entities/relatives_list/relatives_list_entities.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/entities/user_info/user_info_entities.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/repository/relatives_repository.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/add_relative/params/add_relative_param.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/register_without_otp/params/register_under_18_params.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/register_without_otp/params/register_upper_18_params.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/user_info_inquiry/params/user_info_inquiry_param.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: RelativesRepository)
class RelativesRepositoryImpl implements RelativesRepository {
  RelativesRemoteDataSource relativesDataSource;

  RelativesRepositoryImpl({required this.relativesDataSource});

  @override
  Future<Either<Failure, RelativeListEntities>> getRelativesTypeList(
      {required NoParams noParams}) async {
    try {
      final RelativeListEntities relativeListEntities =
          await relativesDataSource.getRelativesTypeList(params: noParams);
      return Right(relativeListEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, UserInfoEntities>> userInfoInquiry(
      {required UserInfoInquiryParam userInfoInquiryParam}) async {
    try {
      final UserInfoEntities userInfoEntities = await relativesDataSource
          .userInfoInquiry(userInfoInquiryParam: userInfoInquiryParam);
      return Right(userInfoEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, AddRelativeEntities>> addRelative({required AddRelativeParam addRelativeParam}) async{
    try {
      final AddRelativeEntities addRelativeEntities = await relativesDataSource
          .addRelative(addRelativeParam: addRelativeParam);
      return Right(addRelativeEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, GetRelativeEntities>> getRelatives(
      {required GetRelativesParams getRelativesParams}) async {
    try {
      final GetRelativeEntities relativeEntities = await relativesDataSource
          .getRelatives(getRelativesParams: getRelativesParams);
      return Right(relativeEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, DeleteRelativeEntities>> deleteRelative({required DeleteRelativeParam deleteRelativeParam}) async{
    try {
      final DeleteRelativeEntities deleteRelativeEntities = await relativesDataSource.deleteRelative(deleteRelativeParam: deleteRelativeParam);
      return Right(deleteRelativeEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, EditRelativeEntities>> editRelative({required EditRelativeParam editRelativeParam}) async{
    try {
      final EditRelativeEntities editRelativeEntities = await relativesDataSource.editRelative(editRelativeParam: editRelativeParam);
      return Right(editRelativeEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, RegisterWithoutOtpEntities>> registerUserUnder18({required RegisterUnder18Params registerUnder18Params}) async{
    try {
      final RegisterWithoutOtpEntities registerWithoutOtpEntities = await relativesDataSource.registerUserUnder18(registerUnder18Params: registerUnder18Params);
      return Right(registerWithoutOtpEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, RegisterWithoutOtpEntities>> registerUserUpper18({required RegisterUpper18Params registerUpper18Params}) async{
    try {
      final RegisterWithoutOtpEntities registerWithoutOtpEntities = await relativesDataSource.registerUserUpper18(registerUpper18Params: registerUpper18Params);
      return Right(registerWithoutOtpEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
