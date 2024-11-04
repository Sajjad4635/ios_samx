import 'package:ios_samx/core/errors/exceptions/server_exception.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/errors/failures/server_failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/data/data_source/introduction_remote_data_source.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/entities/get_all_clinic/get_all_clinic_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/entities/get_cities/get_cities_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/entities/get_last_voucher_number/get_last_voucher_number_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/entities/person_voucher_create/person_voucher_create_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/repository/introduction_repository.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/usecase/get_all_clinic/param/get_all_clinic_param.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/usecase/get_cities/param/get_cities_param.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/usecase/person_voucher_create/param/person_voucher_create_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IntroductionRepository)
class IntroductionRepositoryImp implements IntroductionRepository {
  final IntroductionRemoteDataSource introductionRemoteDataSource;

  IntroductionRepositoryImp({required this.introductionRemoteDataSource});

  @override
  Future<Either<Failure, GetAllClinicEntities>> getAllClinic({required GetAllClinicParam param}) async {
    try {
      final GetAllClinicEntities getAllClinicEntities =
          await introductionRemoteDataSource.getAllClinic(param: param);
      return Right(getAllClinicEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, GetCitiesEntities>> getCities({required GetCitiesParam param}) async {
    try {
      final GetCitiesEntities getCitiesEntities =
          await introductionRemoteDataSource.getCities(param: param);
      return Right(getCitiesEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, GetLastVoucherNumberEntities>> getLastVoucherNumber({required NoParams noParams}) async {
    try {
      final GetLastVoucherNumberEntities getLastVoucherNumberEntities =
          await introductionRemoteDataSource.getLastVoucher(noParams: noParams);
      return Right(getLastVoucherNumberEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, PersonVoucherCreateEntities>> personVoucherCreate({required PersonVoucherCreateParam param}) async {
    try {
      final PersonVoucherCreateEntities personVoucherCreateEntities =
          await introductionRemoteDataSource.personVoucherCreate(param: param);
      return Right(personVoucherCreateEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}

