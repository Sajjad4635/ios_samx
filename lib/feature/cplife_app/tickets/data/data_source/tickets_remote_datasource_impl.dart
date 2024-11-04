import 'package:ios_samx/core/dio/dio_error_cp.dart';
import 'package:ios_samx/core/dio/dio_response_cp.dart';
import 'package:ios_samx/core/dio/dio_response_unitlinked.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/cplife_app/tickets/data/data_source/tickets_remote_datasource.dart';
import 'package:ios_samx/feature/cplife_app/tickets/domain/entities/details_ticket/details_ticket_entities.dart';
import 'package:ios_samx/feature/cplife_app/tickets/domain/entities/remove_ticket/remove_ticket_entities.dart';
import 'package:ios_samx/feature/cplife_app/tickets/domain/entities/tickets/tickets_response_entities.dart';
import 'package:ios_samx/feature/cplife_app/tickets/domain/usecase/details_tickets/param/details_ticket_param.dart';
import 'package:ios_samx/feature/cplife_app/tickets/domain/usecase/remove_ticket/param/remove_ticket_param.dart';
import 'package:dio/dio.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: TicketsRemoteDataSource)
@injectable
class TicketsRemoteDataSourceImpl implements TicketsRemoteDataSource {
  final Dio dio;

  TicketsRemoteDataSourceImpl({required this.dio});

  String baseUrl = FlavorConfig.instance.variables["unitLinkUrl"];

  @override
  Future<TicketsResponseEntities> tickets(
      {required NoParams params}) async {
    String url = "$baseUrl/Policies/Requests";
    try {
      final response = await dio.get(url);
      final TicketsResponseEntities ticketsResponseEntities =
          TicketsResponseEntities(
        DioResponseUnitLinked.fromJson(response.data),
      );
      return ticketsResponseEntities;
    } on DioError catch (e) {
      throw handleDioErrorCP(e);
    }
  }

  @override
  Future<DetailsTicketEntities> detailsTicket(
      {required DetailsTicketParam param}) async {
    String url = "tickets";
    try {
      final response = await dio.get("$url/${param.id}");
      final DetailsTicketEntities detailsTicketEntities =
          DetailsTicketEntities(DioResponseCPLife.fromJson(response.data));
      return detailsTicketEntities;
    } on DioError catch (e) {
      throw handleDioErrorCP(e);
    }
  }

  @override
  Future<RemoveTicketEntities> removeTicket(
      {required RemoveTicketParam param}) async {
    String url = "tickets";
    try {
      final response = await dio.delete("$url/${param.id}");
      final RemoveTicketEntities removeTicketEntities = RemoveTicketEntities(
          dioResponseCPLife: DioResponseCPLife.fromJson(response.data));
      return removeTicketEntities;
    } on DioError catch (e) {
      throw handleDioErrorCP(e);
    }
  }
}
