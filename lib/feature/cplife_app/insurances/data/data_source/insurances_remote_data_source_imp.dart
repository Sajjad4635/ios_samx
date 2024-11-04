import 'package:ios_samx/core/dio/dio_error_cp.dart';
import 'package:ios_samx/core/dio/dio_response_cp.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/cplife_app/insurances/data/data_source/insurances_remote_data_source.dart';
import 'package:ios_samx/feature/cplife_app/insurances/domain/entities/insurances_list_entites/insurances_list_response.dart';
import 'package:ios_samx/feature/cplife_app/insurances/domain/entities/life_insurances/life_insurances_response.dart';
import 'package:ios_samx/feature/cplife_app/insurances/domain/usecases/insurances_list/param/insurances_param.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: InsurancesListDataSource)
@injectable
class InsurancesListDataSourceImpl implements InsurancesListDataSource {
  final Dio dio;

  InsurancesListDataSourceImpl({required this.dio});

  @override
  Future<InsurancesListResponseEntities> insurancesList({required InsurancesParam param}) async {
    String url = "insurances";

    try {
      final response = await dio.get(
        "$url/${param.policyholderId}?pageNo=${param.pageNo}&pageSize=${param.pageSize}",
      );
      final DioResponseCPLife dioResponseCPLife = DioResponseCPLife.fromJson(response.data);
      final InsurancesListResponseEntities insurancesListResponseEntities =
          InsurancesListResponseEntities(dioResponseCPLife);
      return insurancesListResponseEntities;
    } on DioError catch (e) {
      throw handleDioErrorCP(e);
    }
  }

  @override
  Future<LifeInsurancesResponseEntities> lifeInsurances({required NoParams params}) async {
    String url = "insurances/life";
    try {
      final response = await dio.get(
        url,
      );
      final LifeInsurancesResponseEntities lifeInsurancesResponseEntities = LifeInsurancesResponseEntities(
        DioResponseCPLife.fromJson(response.data),
      );
      return lifeInsurancesResponseEntities;
    } on DioError catch (e) {
      throw handleDioErrorCP(e);
    }
  }
}