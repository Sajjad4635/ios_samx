import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/profile/domain/usecase/zipcode_detail/zipcode_detail_param/zipcode_detail_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/usecases/usecase.dart';
import '../../entities/zipcode_detail/zipcode_entities.dart';
import '../../repository/profile_repository.dart';

@injectable
class ZipcodeDetailUseCase extends UseCase<ZipcodeEntities,ZipcodeDetailParam>{
  final ProfileRepository profileRepository;

  ZipcodeDetailUseCase({required this.profileRepository});

  @override
  Future<Either<Failure, ZipcodeEntities>> call(ZipcodeDetailParam zipcodeDetailParam)async {
    return await profileRepository.postZipcode(zipcodeDetailParam: zipcodeDetailParam) ;
  }
}