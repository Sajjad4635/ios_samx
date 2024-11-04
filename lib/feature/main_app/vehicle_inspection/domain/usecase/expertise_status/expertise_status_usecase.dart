import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/vehicle_inspection/domain/repository/expertise_status_repository.dart';
import 'package:ios_samx/feature/main_app/vehicle_inspection/domain/usecase/expertise_status/param/expertise_status_param.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import '../../../../../../core/errors/failures/failure.dart';
import '../../entities/expertise_status/expertise_status_entities.dart';

@injectable
class ExpertiseStatusUseCase implements UseCase<ExpertiseStatusEntities,ExpertiseStatusParam>{

  final ExpertiseStatusRepository expertiseStatusRepository ;
  ExpertiseStatusUseCase({required this.expertiseStatusRepository});

@override
Future<Either<Failure, ExpertiseStatusEntities>> call(ExpertiseStatusParam expertiseStatusParam) async {
  return await expertiseStatusRepository.expertiseStatus(expertiseStatusParam: expertiseStatusParam) ;
 }
}