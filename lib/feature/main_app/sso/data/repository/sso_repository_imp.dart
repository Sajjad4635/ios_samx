import 'package:ios_samx/core/errors/exceptions/server_exception.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/errors/failures/server_failure.dart';
import 'package:ios_samx/feature/main_app/sso/data/data_source/sso_remote_data_source.dart';
import 'package:ios_samx/feature/main_app/sso/domain/entities/get_profile_activation/get_profile_activation_entities.dart';
import 'package:ios_samx/feature/main_app/sso/domain/entities/login/login_entities.dart';
import 'package:ios_samx/feature/main_app/sso/domain/entities/login_otp/login_otp_entities.dart';
import 'package:ios_samx/feature/main_app/sso/domain/entities/sign_up/sign_up_entities.dart';
import 'package:ios_samx/feature/main_app/sso/domain/entities/sign_up_otp/sign_up_otp_entities.dart';
import 'package:ios_samx/feature/main_app/sso/domain/repository/sso_repository.dart';
import 'package:ios_samx/feature/main_app/sso/domain/usecase/login/params/login_params.dart';
import 'package:ios_samx/feature/main_app/sso/domain/usecase/login_otp/params/login_otp_params.dart';
import 'package:ios_samx/feature/main_app/sso/domain/usecase/profile_activation/param/get_profile_activation_param.dart';
import 'package:ios_samx/feature/main_app/sso/domain/usecase/sign_up/params/sign_up_params.dart';
import 'package:ios_samx/feature/main_app/sso/domain/usecase/sign_up_otp/params/sign_up_otp_params.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SsoRepository)
class SsoRepositoryImpl implements SsoRepository {
  final SsoRemoteDataSource remoteDataSource;

  SsoRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, LoginEntities>> login(
      {required LoginParams params}) async {
    try {
      final LoginEntities loginEntities =
          await remoteDataSource.login(params: params);
      return Right(loginEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, LoginOtpEntities>> loginOtp(
      {required LoginOtpParams params}) async {
    try {
      final LoginOtpEntities loginOtpEntities =
          await remoteDataSource.loginOtp(params: params);
      return Right(loginOtpEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, SignUpEntities>> signUp(
      {required SignUpParams params}) async {
    try {
      final SignUpEntities signUpEntities =
          await remoteDataSource.signUp(params: params);
      return Right(signUpEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, SignUpOtpEntities>> signUpOtp(
      {required SignUpOtpParams params}) async {
    try {
      final SignUpOtpEntities signUpOtpEntities =
          await remoteDataSource.signUpOtp(params: params);
      return Right(signUpOtpEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, GetProfileActivationEntities>> getProfileActivation(
      {required GetProfileActivationParam param}) async {
    try {
      final GetProfileActivationEntities getProfileActivationEntities =
          await remoteDataSource.getProfileActivation(param: param);
      return Right(getProfileActivationEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
