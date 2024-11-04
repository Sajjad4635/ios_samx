import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/profile/domain/usecase/zipcode_update/zipcode_update_param/zipcode_update_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';
import '../../entities/zipcode_update/zipcode_update_entities.dart';
import '../../repository/profile_repository.dart';

@injectable

class ZipcodeUpdateUseCase extends UseCase<ZipcodeUpdateEntities,ZipcodeUpdateParam>{

  final ProfileRepository profileRepository;

  ZipcodeUpdateUseCase({required this.profileRepository});

  @override
  Future<Either<Failure, ZipcodeUpdateEntities>> call(ZipcodeUpdateParam zipcodeUpdateParam)async {
    return await profileRepository.updateZipcode(zipcodeUpdateParam: zipcodeUpdateParam);
  }
}