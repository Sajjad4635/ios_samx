
import 'package:dio/dio.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/dio/dio_error.dart';
import '../../../../core/dio/dio_response.dart';
import '../../domain/entity/confirm/ticketing_confirm_response_entity.dart';
import '../../domain/entity/info/ticket_info_response_entity.dart';
import '../../domain/entity/list/ticket_list_response_entity.dart';
import '../../domain/entity/login/ticketing_login_response_entity.dart';
import '../../domain/entity/search/ticketing_search_response_entity.dart';
import '../../domain/usecase/confirm/params/ticketing_confirm_ticket_params.dart';
import '../../domain/usecase/info/params/ticketing_info_params.dart';
import '../../domain/usecase/list/params/ticketing_list_params.dart';
import '../../domain/usecase/login/params/ticketing_login_params.dart';
import '../../domain/usecase/search/params/ticketing_search_params.dart';
import 'otrs_data_source.dart';

@LazySingleton(as: OtrsRemoteDataSource)
@injectable
class OtrsRemoteDataSourceImpl implements OtrsRemoteDataSource {

  final Dio dio;
  OtrsRemoteDataSourceImpl({required this.dio});

  @override
  Future<TicketingLoginResponseEntity> ticketingLogin({required TicketingLoginParams params}) async {
    String url = "${FlavorConfig.instance.variables["supportOtrsURL"]}/Session";
    try {
      Response response = await dio.post(url, data: params.toJson());
      DioResponse dioResponse = DioResponse.fromJson(response.data);
      TicketingLoginResponseEntity entity = TicketingLoginResponseEntity(dioResponse);
      return entity;
    } on DioError catch (e) {
      throw handleDioError(e);
    }
  }


  @override
  Future<TicketingSearchResponseEntity> ticketingSearch({required TicketingSearchParams params}) async {
    String url = "${FlavorConfig.instance.variables["supportOtrsURL"]}/TicketSearch";

    try {
      final Response response = await dio.put(url, data: params.toJson());
      final DioResponse dioResponse = DioResponse.fromJson(response.data);
      final TicketingSearchResponseEntity entity = TicketingSearchResponseEntity(dioResponse);
      return entity;
    } on DioError catch (e) {
      throw handleDioError(e);
    }
  }


  @override
  Future<TicketListResponseEntity> ticketingList({required TicketingListParams params}) async {
    String url = "${FlavorConfig.instance.variables["supportOtrsURL"]}/TicketList";

    try {
      final Response response = await dio.put(url, data: params.toJson());
      final DioResponse dioResponse = DioResponse.fromJson(response.data);
      final TicketListResponseEntity entity = TicketListResponseEntity(dioResponse);
      return entity;
    } on DioError catch (e) {
      throw handleDioError(e);
    }
  }


  @override
  Future<TicketingInfoResponseEntity> getInfoTicket({required TicketingInfoParams params}) async {
    String url = "${FlavorConfig.instance.variables["supportOtrsURL"]}/Ticket";

    try {
      Response response = await dio.put(url, data: params.toJson());
      DioResponse dioResponse = DioResponse.fromJson(response.data);
      TicketingInfoResponseEntity entity = TicketingInfoResponseEntity(dioResponse);

      return entity;
    } on DioError catch (ex) {
      throw handleDioError(ex);
    }
  }


  @override
  Future<TicketingConfirmResponseEntity> sendNewTicket({required TicketingConfirmParams params}) async {
    String url = "${FlavorConfig.instance.variables["supportOtrsURL"]}/Ticket";

    try {
      Response response = await dio.post(url, data: params.toJson());

      DioResponse dioResponse = DioResponse.fromJson(response.data);
      TicketingConfirmResponseEntity entity = TicketingConfirmResponseEntity(dioResponse);

      return entity;
    } on DioError catch (ex) {
      throw handleDioError(ex);
    }
  }














}
