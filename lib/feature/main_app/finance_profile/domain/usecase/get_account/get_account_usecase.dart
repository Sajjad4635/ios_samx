import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../entities/get_account/get_account_entities.dart';
import '../../repository/finance_profile_repository.dart';


@injectable
class GetAccountUseCase implements UseCase <GetAccountEntities, NoParams> {
  final FinanceProfileRepository financeProfileRepository;

  GetAccountUseCase({required this.financeProfileRepository});


  @override
  Future<Either<Failure, GetAccountEntities>> call(NoParams params) async {
    return await financeProfileRepository.getAccount(noParams: params) ;

  }


}