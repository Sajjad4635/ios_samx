import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/file_list/file_list_entities.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/repository/cost_registration_repository.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/file_list/param/file_list_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class FileListUseCase implements UseCase<FileListEntities, FileListParam> {
  final CostRegistrationRepository costRegistrationRepository;

  const FileListUseCase({required this.costRegistrationRepository});

  @override
  Future<Either<Failure, FileListEntities>> call(FileListParam params) async {
    return await costRegistrationRepository.fileList(param: params);
  }
}
