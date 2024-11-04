import 'package:either_dart/either.dart';
import '../../../../../core/errors/failures/failure.dart';
import '../entities/expertise_status/expertise_status_entities.dart';
import '../usecase/expertise_status/param/expertise_status_param.dart';

abstract class ExpertiseStatusRepository {
  Future<Either<Failure,ExpertiseStatusEntities>> expertiseStatus ({required ExpertiseStatusParam expertiseStatusParam});
}