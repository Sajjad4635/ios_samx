import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/send_envelope/send_envelope_entities.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/repository/cost_registration_repository.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/send_envelope/param/send_envelope_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class SendEnvelopeUseCase implements UseCase<SendEnvelopeEntities, SendEnvelopeParam> {
  final CostRegistrationRepository costRegistrationRepository;

  SendEnvelopeUseCase({required this.costRegistrationRepository});

  @override
  Future<Either<Failure, SendEnvelopeEntities>> call(SendEnvelopeParam params) async {
    return await costRegistrationRepository.sendEnvelope(param: params);
  }
}
