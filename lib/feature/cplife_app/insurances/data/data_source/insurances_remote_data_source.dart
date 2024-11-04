import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/cplife_app/insurances/domain/entities/insurances_list_entites/insurances_list_response.dart';
import 'package:ios_samx/feature/cplife_app/insurances/domain/entities/life_insurances/life_insurances_response.dart';
import 'package:ios_samx/feature/cplife_app/insurances/domain/usecases/insurances_list/param/insurances_param.dart';

abstract class InsurancesListDataSource {
  Future<InsurancesListResponseEntities> insurancesList({required InsurancesParam param});
  Future<LifeInsurancesResponseEntities> lifeInsurances({required NoParams params});
}
