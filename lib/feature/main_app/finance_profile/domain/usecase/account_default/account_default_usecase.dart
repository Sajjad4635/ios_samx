import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/usecase/account_default/params/account_default_param.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/usecases/usecase.dart';
import '../../entities/account_default/account_default_entities.dart';
import '../../repository/finance_profile_repository.dart';

@injectable
class AccountDefaultUseCase implements UseCase<AccountDefaultEntities , AccountDefaultParam> {
 final FinanceProfileRepository financeProfileRepository;

 AccountDefaultUseCase({required this.financeProfileRepository});

  @override
  Future<Either<Failure,AccountDefaultEntities >> call (AccountDefaultParam accountDefaultParam) async {
    return await financeProfileRepository.accountDefault(accountDefaultParam: accountDefaultParam) ;
  }
}