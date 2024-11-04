import 'package:ios_samx/feature/cplife_app/withdraw/domain/repository/withdraw_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:either_dart/src/either.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/cplife_app/withdraw/domain/entities/validate_cash_withdraw/validate_cash_withdraw_response.dart';
import 'package:ios_samx/feature/cplife_app/withdraw/domain/usecase/validate_cash_withdraw/params/validate_cash_withdraw_param.dart';

@injectable
class ValidateCashWithdrawUseCase extends UseCase<ValidateCashWithdrawEntities, ValidateCashWithdrawParam> {
  final WithdrawRepository withdrawRepository;
  ValidateCashWithdrawUseCase({required this.withdrawRepository});

  @override
  Future<Either<Failure, ValidateCashWithdrawEntities>> call(ValidateCashWithdrawParam params) async {
    return await withdrawRepository.validateCashWithdraw(param: params);
  }
}
