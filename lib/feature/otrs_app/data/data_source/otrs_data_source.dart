
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

abstract class OtrsRemoteDataSource {
  Future<TicketingLoginResponseEntity> ticketingLogin({ required TicketingLoginParams params});
  Future<TicketingSearchResponseEntity> ticketingSearch({required TicketingSearchParams params});
  Future<TicketListResponseEntity> ticketingList({required TicketingListParams params});
  Future<TicketingInfoResponseEntity> getInfoTicket ({required TicketingInfoParams params});
  Future<TicketingConfirmResponseEntity> sendNewTicket ({required TicketingConfirmParams params});














}
