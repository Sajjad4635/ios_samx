import 'package:ios_samx/core/dio/dio_error_cp.dart';
import 'package:ios_samx/core/dio/dio_response_cp.dart';
import 'package:ios_samx/feature/cplife_app/buy_back/data/data_source/buy_back_remote_data_source.dart';
import 'package:ios_samx/feature/cplife_app/buy_back/domain/entities/register_buy_back/register_buy_back_response_entities.dart';
import 'package:ios_samx/feature/cplife_app/buy_back/domain/entities/validate_buy_backs/validate_buy_backs_response.dart';
import 'package:ios_samx/feature/cplife_app/buy_back/domain/usecase/register_buy_back/params/register_buy_back_params.dart';
import 'package:ios_samx/feature/cplife_app/buy_back/domain/usecase/validate_buy_back/params/validate_buy_back_params.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: BuyBackRemoteDataSource)
@injectable
class BuyBackRemoteDataSourceImp implements BuyBackRemoteDataSource {
  final Dio dio;
  BuyBackRemoteDataSourceImp({required this.dio});

  @override
  Future<RegisterBuyBackResponseEntities> registerBuyBack({required RegisterBuyBackParams param}) async {
    String url = "buybacks";

    try {
      final response = await dio.post(
        url,
        data: param.toJson(),
      );
      final RegisterBuyBackResponseEntities registerBuyBackResponseEntities = RegisterBuyBackResponseEntities(
        DioResponseCPLife.fromJson(response.data!),
      );
      return registerBuyBackResponseEntities;
    } on DioError catch (e) {
      throw handleDioErrorCP(e);
    }
  }

  @override
  Future<ValidateBuyBacksResponseEntities> validateBuyBack({required ValidateBuyBackParams param}) async {
    String url = "buybacks/validate";

    try {
      final response = await dio.get(
        "$url?policyId=${param.policyId}",
      );
      final ValidateBuyBacksResponseEntities validateBuyBacksResponseEntities = ValidateBuyBacksResponseEntities(
        DioResponseCPLife.fromJson(response.data!),
      );
      return validateBuyBacksResponseEntities;
    } on DioError catch (e) {
      throw handleDioErrorCP(e);
    }
  }

}
