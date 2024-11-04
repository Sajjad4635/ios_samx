import 'package:ios_samx/feature/cplife_app/withdraw/domain/repository/withdraw_repository.dart';
import 'package:ios_samx/feature/cplife_app/withdraw/domain/usecase/create_cash_withdraw/param/create_cash_withdraw_param.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:either_dart/src/either.dart';
import 'package:ios_samx/core/usecases/usecase.dart';

import '../../entities/create_cash_withdraw/create_cash_withdraw_response.dart';

@injectable
class CreateCashWithdrawUseCase implements UseCase<CreateCashWithdrawEntities, CreateCashWithdrawParam> {
  final WithdrawRepository withdrawRepository;

  CreateCashWithdrawUseCase({required this.withdrawRepository});

  @override
  Future<Either<Failure, CreateCashWithdrawEntities>> call(CreateCashWithdrawParam params) async {
    return await withdrawRepository.createCashWithdraw(param: params);
  }
}
