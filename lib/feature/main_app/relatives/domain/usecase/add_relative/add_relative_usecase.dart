import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/entities/add_relative/add_relative_entities.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/repository/relatives_repository.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/add_relative/params/add_relative_param.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddRelativeUseCase implements UseCase<AddRelativeEntities, AddRelativeParam> {
  final RelativesRepository relativesRepository;

  AddRelativeUseCase({required this.relativesRepository});

  @override
  Future<Either<Failure, AddRelativeEntities>> call(
      AddRelativeParam addRelativeParam) async {
    return await relativesRepository.addRelative(
        addRelativeParam: addRelativeParam);
  }
}
