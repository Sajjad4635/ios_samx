import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/vehicle_inspection/domain/repository/create_basic_expertise.dart';
import 'package:ios_samx/feature/main_app/vehicle_inspection/domain/usecase/create_basic_expertise/param/create_basic_expertise_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';
import '../../../../../../core/usecases/usecase.dart';
import '../../entities/create_basic_expertise/create_basic_expertise_entities.dart';

@injectable
class CreateBasicExpertiseUseCase implements UseCase <CreateBasicExpertiseEntities,CreateBasicExpertiseParam> {
  final CreateBasicExpertiseRepository createBasicExpertiseRepository ;

  CreateBasicExpertiseUseCase({required this.createBasicExpertiseRepository});


  @override
  Future<Either<Failure, CreateBasicExpertiseEntities>> call(CreateBasicExpertiseParam createBasicExpertiseParam) async {
    return await createBasicExpertiseRepository.createBasicExpertise(createBasicExpertiseParam: createBasicExpertiseParam) ;
  }
}