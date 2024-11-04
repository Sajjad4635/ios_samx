import 'package:either_dart/either.dart';
import '../../../../../core/errors/failures/failure.dart';
import '../entities/create_basic_expertise/create_basic_expertise_entities.dart';
import '../usecase/create_basic_expertise/param/create_basic_expertise_param.dart';

abstract class CreateBasicExpertiseRepository {
  Future<Either<Failure,CreateBasicExpertiseEntities>> createBasicExpertise ({required CreateBasicExpertiseParam createBasicExpertiseParam});
}