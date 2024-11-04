
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/feature/otrs_app/domain/usecase/info/params/ticketing_info_params.dart';
import '../../../../../core/errors/failures/failure.dart';
import '../../../../../core/usecases/usecase.dart';
import '../../entity/info/ticket_info_response_entity.dart';
import '../../repository/ticketing_info_repository.dart';

@injectable                                         
class TicketingInfoUseCase extends UseCase<TicketingInfoResponseEntity, TicketingInfoParams>{

  TicketingInfoRepository repository ;
  TicketingInfoUseCase(this.repository);
  
  @override
  Future<Either<Failure, TicketingInfoResponseEntity>> call(TicketingInfoParams params) async {
    
    return await repository.getInfoTicket(params: params);
  }
 
}