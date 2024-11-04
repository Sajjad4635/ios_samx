import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../entities/get_profile/get_profile_entities.dart';
import '../../repository/profile_repository.dart';

@injectable
class GetProfileUseCase implements UseCase<GetProfileEntities, NoParams> {
  final ProfileRepository profileRepository;

  GetProfileUseCase({required this.profileRepository});

  @override
  Future<Either<Failure, GetProfileEntities>> call(NoParams params) async {
    return await profileRepository.getProfile(noParams: params);
  }
}
