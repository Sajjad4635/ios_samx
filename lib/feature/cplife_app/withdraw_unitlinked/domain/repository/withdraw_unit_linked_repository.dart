import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/cplife_app/withdraw_unitlinked/domain/entities/withdraw_unitlinked/withdraw_unitlinked_entities.dart';
import 'package:ios_samx/feature/cplife_app/withdraw_unitlinked/domain/usecases/withdraw_unit_link_usecase/param/withdraw_unit_linked_param.dart';
import 'package:either_dart/either.dart';

abstract class WithdrawUnitLinkedRepository {
  Future<Either<Failure, CreateWithdrawUnitLinkedEntities>> createWithdrawUnitlinked(
      {required CreateWithdrawUnitLinkedParam param});
}
