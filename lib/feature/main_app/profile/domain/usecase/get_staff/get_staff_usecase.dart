import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/profile/domain/usecase/get_staff/param/get_staff_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/usecases/usecase.dart';
import '../../entities/get_staff/get_staff_entities.dart';
import '../../repository/profile_repository.dart';

@injectable
class GetStaffUseCase implements UseCase<GetStaffEntities, GetStaffParam> {
  final ProfileRepository profileRepository;

  GetStaffUseCase({required this.profileRepository});

  @override
  Future<Either<Failure, GetStaffEntities>> call(GetStaffParam params) async {
    return await profileRepository.getStaff(getStaffParam: params);
  }
}
