import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/profile/domain/usecase/update_passport/param/update_passport_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/usecases/usecase.dart';
import '../../entities/update_passport/update_passport_entities.dart';
import '../../repository/profile_repository.dart';

@injectable
class UpdatePassportUseCase implements UseCase<UpdatePassportEntities,UpdatePassportParam>{
  final ProfileRepository profileRepository;

  UpdatePassportUseCase({required this.profileRepository});

  @override
  Future<Either<Failure, UpdatePassportEntities>> call(UpdatePassportParam updatePassportParam)async {
    return await profileRepository.updatePassport(updatePassportParam: updatePassportParam);
  }

}