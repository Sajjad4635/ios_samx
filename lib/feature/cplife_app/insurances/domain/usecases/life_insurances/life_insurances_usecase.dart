import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/cplife_app/insurances/domain/entities/life_insurances/life_insurances_response.dart';
import 'package:ios_samx/feature/cplife_app/insurances/domain/repository/insurances_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:either_dart/src/either.dart';

@injectable
class LifeInsurancesUseCase extends UseCase<LifeInsurancesResponseEntities, NoParams> {
  final InsurancesListRepository insurancesListRepository;
  LifeInsurancesUseCase(this.insurancesListRepository);

  @override
  Future<Either<Failure, LifeInsurancesResponseEntities>> call(NoParams params) async {
    return await insurancesListRepository.lifeInsurances(params: params);
  }
}
