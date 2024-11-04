import 'package:ios_samx/core/dio/dio_error_unitlinked.dart';
import 'package:ios_samx/core/dio/dio_response_unitlinked.dart';
import 'package:ios_samx/feature/cplife_app/withdraw_unitlinked/data/data_source/withdraw_unit_link_remote_data_source.dart';
import 'package:ios_samx/feature/cplife_app/withdraw_unitlinked/domain/entities/withdraw_unitlinked/withdraw_unitlinked_entities.dart';
import 'package:ios_samx/feature/cplife_app/withdraw_unitlinked/domain/usecases/withdraw_unit_link_usecase/param/withdraw_unit_linked_param.dart';
import 'package:dio/dio.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: WithdrawUnitLinkedRemoteDataSource)
@injectable
class WithdrawUnitLinkedRemoteDataSourceImp extends WithdrawUnitLinkedRemoteDataSource {
  final Dio dio;

  WithdrawUnitLinkedRemoteDataSourceImp({required this.dio});

  String baseUrl = FlavorConfig.instance.variables["unitLinkUrl"];

  @override
  Future<CreateWithdrawUnitLinkedEntities> createWithdrawUnitLinked(
      {required CreateWithdrawUnitLinkedParam param}) async {
    final String url = "$baseUrl/Policies/${param.id}/CreateWithdrawRequest";
    try {
      final response = await dio.post(url, data: param.toJson());
      final CreateWithdrawUnitLinkedEntities createWithdrawUnitLinkedEntities =
          CreateWithdrawUnitLinkedEntities(dioResponse: DioResponseUnitLinked.fromJson(response.data));

      return createWithdrawUnitLinkedEntities;
    } on DioException catch (e) {
      throw handleDioErrorUnitlinked(e);
    }
  }
}
