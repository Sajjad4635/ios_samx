
import 'package:ios_samx/core/errors/exceptions/server_exception.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/errors/failures/server_failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/cplife_app/insurances/data/data_source/insurances_remote_data_source.dart';
import 'package:ios_samx/feature/cplife_app/insurances/domain/entities/insurances_list_entites/insurances_list_response.dart';
import 'package:ios_samx/feature/cplife_app/insurances/domain/entities/life_insurances/life_insurances_response.dart';
import 'package:ios_samx/feature/cplife_app/insurances/domain/repository/insurances_repository.dart';
import 'package:ios_samx/feature/cplife_app/insurances/domain/usecases/insurances_list/param/insurances_param.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: InsurancesListRepository)
class InsurancesListRepositoryImpl implements InsurancesListRepository {
  InsurancesListDataSource insurancesListDataSource;

  InsurancesListRepositoryImpl({required this.insurancesListDataSource});

  @override
  Future<Either<Failure, InsurancesListResponseEntities>> insurancesList({required InsurancesParam param}) async {
    try {
      final insurancesListEntities = await insurancesListDataSource.insurancesList(param: param);
      return Right(insurancesListEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, LifeInsurancesResponseEntities>> lifeInsurances({required NoParams params}) async {
    try {
      final lifeInsurancesResponseEntities = await insurancesListDataSource.lifeInsurances(params: params);
      return Right(lifeInsurancesResponseEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

}