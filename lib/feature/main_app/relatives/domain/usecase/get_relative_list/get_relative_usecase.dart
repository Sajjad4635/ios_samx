import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/entities/relative/get_relative_entities.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/repository/relatives_repository.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/get_relative_list/params/get_relatives_params.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetRelativeListUseCase
    implements UseCase<GetRelativeEntities, GetRelativesParams> {
  final RelativesRepository relativesRepository;

  GetRelativeListUseCase({required this.relativesRepository});

  @override
  Future<Either<Failure, GetRelativeEntities>> call(
      GetRelativesParams params) async {
    return await relativesRepository.getRelatives(getRelativesParams: params);
  }
}
