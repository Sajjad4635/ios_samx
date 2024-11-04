import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/profile/domain/usecase/get_risk_score/param/get_risk_score_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';
import '../../entities/get_risk_score/get_risk_entities.dart';
import '../../repository/profile_repository.dart';

@injectable
class GetRiskScoreUseCase implements UseCase<GetRiskScoreEntities,GetRiskScoreParam>{

  final ProfileRepository profileRepository;

  GetRiskScoreUseCase({required this.profileRepository});

  @override
  Future<Either<Failure, GetRiskScoreEntities>> call(GetRiskScoreParam getRiskScoreParam)async {
    return await profileRepository.getRiskScore(getRiskScoreParam: getRiskScoreParam);
  }
}