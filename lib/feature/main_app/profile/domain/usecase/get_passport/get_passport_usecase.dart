import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../entities/get_passport/get_passport_entities.dart';
import '../../repository/profile_repository.dart';

@injectable
class GetPassportUseCase implements UseCase<GetPassportEntities, NoParams> {
  final ProfileRepository profileRepository;

  GetPassportUseCase({required this.profileRepository});

  @override
  Future<Either<Failure, GetPassportEntities>> call(NoParams noParams) async {
    return await profileRepository.getPassport(noParams: noParams);
  }
}
