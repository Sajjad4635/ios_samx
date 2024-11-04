import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../entities/get_score/get_score_entity.dart';
import '../../repository/profile_repository.dart';

@injectable
class GetScoreUseCase extends UseCase<GetScoreEntity, NoParams> {
  ProfileRepository repository;

  GetScoreUseCase({required this.repository});

  @override
  Future<Either<Failure, GetScoreEntity>> call(NoParams params) async {
    return await repository.getScore(noParams: params);
  }
}
