import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/usecase/get_account_iban/params/get_account_iban_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/usecases/usecase.dart';
import '../../entities/get_account_iban/get_account_iban_entites.dart';
import '../../repository/finance_profile_repository.dart';

@injectable


class GetAccountIbanUseCase implements UseCase<GetAccountIbanEntities,GetAccountIbanParam>{

  final FinanceProfileRepository financeProfileRepository;

  GetAccountIbanUseCase({required this.financeProfileRepository});

  @override
  Future<Either<Failure, GetAccountIbanEntities>> call(GetAccountIbanParam params) async{
    return await financeProfileRepository.getAccountIban(getAccountIbanParam: params) ;
  }

}