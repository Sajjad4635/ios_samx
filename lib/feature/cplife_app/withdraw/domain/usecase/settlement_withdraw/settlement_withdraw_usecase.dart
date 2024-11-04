import 'package:ios_samx/feature/cplife_app/withdraw/domain/entities/settlement_withdraw/settlement_withdraw_response.dart';
import 'package:ios_samx/feature/cplife_app/withdraw/domain/repository/withdraw_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:either_dart/src/either.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/cplife_app/withdraw/domain/usecase/settlement_withdraw/params/settlement_withdraw_param.dart';

@injectable
class SettlementWithdrawUseCase extends UseCase<SettlementWithdrawResponseEntities, SettlementWithdrawParam> {
  final WithdrawRepository withdrawRepository;
  SettlementWithdrawUseCase({required this.withdrawRepository});

  @override
  Future<Either<Failure, SettlementWithdrawResponseEntities>> call(SettlementWithdrawParam params) async {
    return await withdrawRepository.settlementWithdraw(param: params);
  }
}
