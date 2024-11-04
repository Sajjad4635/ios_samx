import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/entities/get_card/get_card_entities.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/repository/finance_profile_repository.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';
import '../../../../../../core/usecases/usecase.dart';

@injectable
class GetCardUseCase implements UseCase<GetCardEntities , NoParams>{
  final FinanceProfileRepository financeProfileRepository;
  GetCardUseCase({required this.financeProfileRepository});

  @override
  Future<Either<Failure, GetCardEntities>> call(NoParams noParams) async{
    return await financeProfileRepository.getCardInfo(noParams: noParams) ;
  }

}

