import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/entities/relatives_list/relatives_list_entities.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/repository/relatives_repository.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetRelativesTypeListUseCase implements UseCase<RelativeListEntities, NoParams> {
  final RelativesRepository relativesRepository;

  GetRelativesTypeListUseCase({required this.relativesRepository});

  @override
  Future<Either<Failure, RelativeListEntities>> call(NoParams params) async {
    return await relativesRepository.getRelativesTypeList(noParams: params);
  }
}
