import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
 import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';
import '../../entities/clinics_types/get_all_clinics_entity.dart';
import '../../repositories/get_clinics_types_repository.dart';
import 'params/get_clinics_types_params.dart';

@injectable
class GetClinicsTypesUseCase implements UseCase<GetClinicsTypesEntity , GetClinicsTypesParams>{

  final GetClinicsTypesRepository repository ;
  GetClinicsTypesUseCase({required this.repository});

  @override
  Future<Either<Failure, GetClinicsTypesEntity>> call(GetClinicsTypesParams params) async{
    return await repository.getClinicsTypes(params: params);
  }

}