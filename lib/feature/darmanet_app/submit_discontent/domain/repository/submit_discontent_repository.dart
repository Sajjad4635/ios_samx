import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:either_dart/either.dart';

import '../entity/submit_discontent.dart';
import '../usecase/params/submit_discontent_params.dart';

abstract class SubmitDiscontentRepository {
  Future<Either<Failure, SubmitDiscontentEntity>> submitDiscontent({required SubmitDiscontentParams params});

}