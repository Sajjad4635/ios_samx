import 'package:ios_samx/feature/cplife_app/insurances/domain/entities/insurances_list_entites/insurances_list_response.dart';
import 'package:ios_samx/feature/cplife_app/insurances/domain/repository/insurances_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:either_dart/src/either.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/cplife_app/insurances/domain/usecases/insurances_list/param/insurances_param.dart';

@injectable
class InsurancesListUseCase
    implements UseCase<InsurancesListResponseEntities, InsurancesParam> {
  final InsurancesListRepository repository;

  const InsurancesListUseCase(this.repository);

  @override
  Future<Either<Failure, InsurancesListResponseEntities>> call(
      InsurancesParam param) async {
    return await repository.insurancesList(param: param);
  }
}
