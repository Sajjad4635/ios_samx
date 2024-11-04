import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/cplife_app/withdraw_unitlinked/domain/entities/withdraw_unitlinked/withdraw_unitlinked_entities.dart';
import 'package:ios_samx/feature/cplife_app/withdraw_unitlinked/domain/repository/withdraw_unit_linked_repository.dart';
import 'package:ios_samx/feature/cplife_app/withdraw_unitlinked/domain/usecases/withdraw_unit_link_usecase/param/withdraw_unit_linked_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class CreateWithdrawUnitLinkedUseCase implements UseCase<CreateWithdrawUnitLinkedEntities, CreateWithdrawUnitLinkedParam> {
  final WithdrawUnitLinkedRepository withdrawUnitLinkedRepository;

  const CreateWithdrawUnitLinkedUseCase( this.withdrawUnitLinkedRepository);

  @override
  Future<Either<Failure, CreateWithdrawUnitLinkedEntities>> call(CreateWithdrawUnitLinkedParam params) async {
    return await withdrawUnitLinkedRepository.createWithdrawUnitlinked(param: params);
  }
}
