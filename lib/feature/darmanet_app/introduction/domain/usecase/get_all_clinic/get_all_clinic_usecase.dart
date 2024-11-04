import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/entities/get_all_clinic/get_all_clinic_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/repository/introduction_repository.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/usecase/get_all_clinic/param/get_all_clinic_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAllClinicUseCase implements UseCase<GetAllClinicEntities, GetAllClinicParam> {
  final IntroductionRepository introductionRepository;
  const GetAllClinicUseCase({required this.introductionRepository});

  @override
  Future<Either<Failure, GetAllClinicEntities>> call(GetAllClinicParam params) async {
    return await introductionRepository.getAllClinic(param: params);
  }
}
