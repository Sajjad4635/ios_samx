import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/get_envelope_send_info/get_envelope_send_info_entities.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/repository/cost_registration_repository.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/get_envelope_send_info/param/get_envelope_send_info_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetEnvelopeSendInfoUseCase implements UseCase<GetEnvelopeSendInfoEntities, GetEnvelopeSendInfoParam> {
  final CostRegistrationRepository costRegistrationRepository;
  GetEnvelopeSendInfoUseCase({required this.costRegistrationRepository});

  @override
  Future<Either<Failure, GetEnvelopeSendInfoEntities>> call(GetEnvelopeSendInfoParam params) async {
    return await costRegistrationRepository.getSendEnvelopeInfo(param: params);
  }
}
