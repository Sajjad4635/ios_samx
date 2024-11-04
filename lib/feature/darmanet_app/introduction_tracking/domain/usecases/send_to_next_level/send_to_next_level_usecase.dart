import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/send_to_next_level/param/send_to_next_level_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/usecases/usecase.dart';
import '../../entities/send_to_next_level/send_to_next_level_entities.dart';
import '../../repository/introduction_tracking_repository.dart';


@injectable
class SendToNextLevelUseCase
    implements UseCase<SendToNextLevelEntities, SendToNextLevelParam> {
  final IntroductionTrackingRepository introductionTrackingRepository;

  SendToNextLevelUseCase({required this.introductionTrackingRepository});

  @override
  Future<Either<Failure, SendToNextLevelEntities>> call(
      SendToNextLevelParam params) async {
    return await introductionTrackingRepository.sendToNextLevel(param: params);
  }
}
