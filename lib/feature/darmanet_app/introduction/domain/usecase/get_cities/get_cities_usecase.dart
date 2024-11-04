import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/entities/get_cities/get_cities_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/repository/introduction_repository.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/usecase/get_cities/param/get_cities_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCitiesUseCase implements UseCase<GetCitiesEntities, GetCitiesParam> {
  final IntroductionRepository introductionRepository;
  GetCitiesUseCase({required this.introductionRepository});

  @override
  Future<Either<Failure, GetCitiesEntities>> call(GetCitiesParam params) async {
    return await introductionRepository.getCities(param: params);
  }
}
