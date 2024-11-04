import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/vehicle_inspection/domain/usecase/get_process/param/get_process_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';
import '../../entities/get_process/get_process_entites.dart';
import '../../repository/get_process_repository.dart';

@injectable
class GetProcessUseCase implements UseCase<GetProcessEntities,GetProcessParam>{
 final GetProcessRepository getProcessRepository ;

  GetProcessUseCase({required this.getProcessRepository});


  @override
  Future<Either<Failure, GetProcessEntities>> call(GetProcessParam getProcessParam) async {
    return await getProcessRepository.getProcess(getProcessParam: getProcessParam);
  }
}