import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/domain/entities/unit_price/unit_price_response_entity.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/domain/repositories/deposit_unit_link_repository.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class UnitPriceUseCase implements UseCase<UnitPriceResponseEntity, NoParams> {
  final DepositUnitLinkRepository repository;

  const UnitPriceUseCase(this.repository);

  @override
  Future<Either<Failure, UnitPriceResponseEntity>> call(NoParams noParams) async {
    return await repository.getUnitPrice(noParams: noParams);
  }
}
