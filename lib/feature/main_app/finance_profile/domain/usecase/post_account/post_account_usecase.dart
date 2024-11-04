import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/usecase/post_account/params/post_account_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';
import '../../../../../../core/usecases/usecase.dart';
import '../../entities/post_account/post_account_entities.dart';
import '../../repository/finance_profile_repository.dart';

@injectable
class PostAccountUseCase implements UseCase<PostAccountEntities,PostAccountParam> {
  final FinanceProfileRepository financeProfileRepository;

  PostAccountUseCase({required this.financeProfileRepository});

  @override
  Future<Either<Failure, PostAccountEntities>> call(PostAccountParam param) async {
    return await financeProfileRepository.postAccount(postAccountParam: param) ;
  }
}
