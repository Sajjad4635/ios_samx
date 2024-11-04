import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/entities/edit_relative/edit_relative_entities.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/repository/relatives_repository.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/edit_relative/params/edit_relative_param.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class EditRelativeUseCase
    implements UseCase<EditRelativeEntities, EditRelativeParam> {
  final RelativesRepository relativesRepository;

  EditRelativeUseCase({required this.relativesRepository});

  @override
  Future<Either<Failure, EditRelativeEntities>> call(
      EditRelativeParam params) async {
    return await relativesRepository.editRelative(editRelativeParam: params);
  }
}
