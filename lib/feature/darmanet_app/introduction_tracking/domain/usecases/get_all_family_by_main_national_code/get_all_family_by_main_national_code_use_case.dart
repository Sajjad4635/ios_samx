import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/entities/get_all_family_by_main_national_code/get_family_by_main_national_code_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/repository/introduction_tracking_repository.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/get_all_family_by_main_national_code/param/get_all_family_by_main_national_code_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAllFamilyByMainNationalCodeUseCase
    implements UseCase<GetAllFamilyByMainNationalCodeEntities, GetAllFamilyByMainNationalCodeParam> {
  final IntroductionTrackingRepository introductionTrackingRepository;

  GetAllFamilyByMainNationalCodeUseCase({required this.introductionTrackingRepository});

  @override
  Future<Either<Failure, GetAllFamilyByMainNationalCodeEntities>> call(
      GetAllFamilyByMainNationalCodeParam params) async {
    return await introductionTrackingRepository.getAllFamilyByMainNationalCode(param: params);
  }
}
