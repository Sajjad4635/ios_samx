import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/domain/entities/create_deposit/create_deposit_response_entities.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/domain/repositories/deposit_unit_link_repository.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/domain/usecases/create_deposit/param/create_deposit_param.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class CreateDepositUseCase
    implements UseCase<CreateDepositResponseEntities, CreateDepositParam> {
  final DepositUnitLinkRepository repository;

  const CreateDepositUseCase(this.repository);

  @override
  Future<Either<Failure, CreateDepositResponseEntities>> call(
      CreateDepositParam param) async {
    return await repository.createDeposit(param: param);
  }
}