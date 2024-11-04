import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/entities/delete_relative/delete_relative_entities.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/repository/relatives_repository.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/delete_relative/params/delete_relative_param.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeleteRelativeUseCase implements UseCase<DeleteRelativeEntities, DeleteRelativeParam> {
  final RelativesRepository relativesRepository;

  DeleteRelativeUseCase({required this.relativesRepository});

  @override
  Future<Either<Failure, DeleteRelativeEntities>> call(
      DeleteRelativeParam deleteRelativeParam) async {
    return await relativesRepository.deleteRelative(
        deleteRelativeParam: deleteRelativeParam);
  }
}
