import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/usecase/account_enable/params/account_enable_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';
import '../../../../../../core/usecases/usecase.dart';
import '../../entities/account_enable/account_enable_entities.dart';
import '../../repository/finance_profile_repository.dart';

@injectable
class AccountEnableUseCase implements UseCase<AccountEnableEntities , AccountEnableParam>{
  final FinanceProfileRepository financeProfileRepository;
  AccountEnableUseCase({required this.financeProfileRepository});

  @override
  Future<Either<Failure, AccountEnableEntities>> call(AccountEnableParam param) async{
    return await financeProfileRepository.accountEnable(accountEnableParam: param) ;
  }

}

