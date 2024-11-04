import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/cplife_app/insurances/domain/entities/insurances_list_entites/insurances_list_response.dart';
import 'package:ios_samx/feature/cplife_app/insurances/domain/entities/life_insurances/life_insurances_response.dart';
import 'package:ios_samx/feature/cplife_app/insurances/domain/usecases/insurances_list/param/insurances_param.dart';
import 'package:either_dart/either.dart';

abstract class InsurancesListRepository {
  Future<Either<Failure, InsurancesListResponseEntities>> insurancesList({required InsurancesParam param});
  Future<Either<Failure, LifeInsurancesResponseEntities>> lifeInsurances({required NoParams params});
}
