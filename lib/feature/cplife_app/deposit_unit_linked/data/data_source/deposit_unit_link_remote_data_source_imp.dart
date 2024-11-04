import 'package:ios_samx/core/dio/dio_error_unitlinked.dart';
import 'package:ios_samx/core/dio/dio_response_unitlinked.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/data/data_source/deposit_unit_link_remote_data_source.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/domain/entities/create_deposit/create_deposit_response_entities.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/domain/entities/transaction_status/transaction_status_response_entity.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/domain/entities/unit_price/unit_price_response_entity.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/domain/usecases/create_deposit/param/create_deposit_param.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/domain/usecases/transaction_status/param/transaction_status_param.dart';
import 'package:dio/dio.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: DepositUnitLinkRemoteDataSource)
@injectable
class DepositUnitLinkRemoteDataSourceImp extends DepositUnitLinkRemoteDataSource {
  final Dio dio;

  DepositUnitLinkRemoteDataSourceImp({required this.dio});

  String baseUrl = FlavorConfig.instance.variables["unitLinkUrl"];

  @override
  Future<TransactionStatusResponseEntity> getTransactionStatus({required TransactionStatusParam param}) async {
    final String url = "$baseUrl/Transactions/${param.policyId}/status";

    try {
      final response = await dio.get(url);

      final TransactionStatusResponseEntity transactionStatusResponseEntity = TransactionStatusResponseEntity(
        dioResponse: DioResponseUnitLinked.fromJson(response.data),
      );

      return transactionStatusResponseEntity;
    } on DioException catch (e) {
      throw handleDioErrorUnitlinked(e);
    }
  }

  @override
  Future<UnitPriceResponseEntity> getUnitPrice({required NoParams noParams}) async {
    final String url = "$baseUrl/UnitPrices";

    try {
      final response = await dio.get(url);

      final UnitPriceResponseEntity unitPriceResponseEntity = UnitPriceResponseEntity(
        dioResponse: DioResponseUnitLinked.fromJson(response.data),
      );
      return unitPriceResponseEntity;
    } on DioException catch (e) {
      throw handleDioErrorUnitlinked(e);
    }
  }

  @override
  Future<CreateDepositResponseEntities> createDeposit({required CreateDepositParam param}) async {
    final String url = "$baseUrl/Policies/${param.id}/CreateDepositRequest";

    try {
      final response = await dio.post(url, data: param.toJson());

      final CreateDepositResponseEntities createDepositResponseEntities = CreateDepositResponseEntities(
        dioResponse: DioResponseUnitLinked.fromJson(response.data),
      );

      return createDepositResponseEntities;
    } on DioException catch (e) {
      throw handleDioErrorUnitlinked(e);
    }
  }
}
