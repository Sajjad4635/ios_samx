import 'package:ios_samx/feature/cplife_app/withdraw/domain/entities/create_settlement_withdraw/create_settlement_withdraw_response.dart';
import 'package:ios_samx/feature/cplife_app/withdraw/domain/repository/withdraw_repository.dart';
import 'package:ios_samx/feature/cplife_app/withdraw/domain/usecase/create_settlement_withdraw/params/create_settlement_withdraw_param.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:either_dart/src/either.dart';
import 'package:ios_samx/core/usecases/usecase.dart';

@injectable
class CreateSettlementWithdrawUseCase
    implements UseCase<CreateSettlementWithdrawEntities, CreateSettlementWithdrawParam> {
  final WithdrawRepository withdrawRepository;

  CreateSettlementWithdrawUseCase(this.withdrawRepository);

  @override
  Future<Either<Failure, CreateSettlementWithdrawEntities>> call(CreateSettlementWithdrawParam params) async {
    return await withdrawRepository.createSettlementWithdraw(param: params);
  }
}
