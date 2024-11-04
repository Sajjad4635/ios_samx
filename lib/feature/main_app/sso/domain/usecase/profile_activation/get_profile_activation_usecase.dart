import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/sso/domain/entities/get_profile_activation/get_profile_activation_entities.dart';
import 'package:ios_samx/feature/main_app/sso/domain/repository/sso_repository.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

import 'param/get_profile_activation_param.dart';

@injectable
class GetProfileActivationUseCase
    implements
        UseCase<GetProfileActivationEntities, GetProfileActivationParam> {
  final SsoRepository ssoRepository;

  GetProfileActivationUseCase({required this.ssoRepository});

  @override
  Future<Either<Failure, GetProfileActivationEntities>> call(
      GetProfileActivationParam params) async {
    return await ssoRepository.getProfileActivation(param: params);
  }
}
