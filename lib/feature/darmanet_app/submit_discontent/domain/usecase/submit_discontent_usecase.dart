import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/darmanet_app/submit_discontent/domain/usecase/params/submit_discontent_params.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../entity/submit_discontent.dart';
import '../repository/submit_discontent_repository.dart';

@injectable
class SubmitDiscontentUseCase extends UseCase<SubmitDiscontentEntity, SubmitDiscontentParams>{

  SubmitDiscontentRepository repository ;
  SubmitDiscontentUseCase({required this.repository});

  @override
  Future<Either<Failure, SubmitDiscontentEntity>> call(SubmitDiscontentParams params) async {
    return await repository.submitDiscontent(params: params);
  }

  
}