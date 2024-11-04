import 'package:ios_samx/feature/cplife_app/withdraw_unitlinked/domain/entities/withdraw_unitlinked/withdraw_unitlinked_entities.dart';
import 'package:ios_samx/feature/cplife_app/withdraw_unitlinked/domain/usecases/withdraw_unit_link_usecase/param/withdraw_unit_linked_param.dart';

abstract class WithdrawUnitLinkedRemoteDataSource {
  Future<CreateWithdrawUnitLinkedEntities> createWithdrawUnitLinked(
      {required CreateWithdrawUnitLinkedParam param});
}
