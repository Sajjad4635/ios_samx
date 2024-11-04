import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/entities/card_default/card_default_entities.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/repository/finance_profile_repository.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/usecase/card_default/params/card_default_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';
import '../../../../../../core/usecases/usecase.dart';

@injectable
class CardDefaultUseCase implements UseCase<CardDefaultEntities , CardDefaultParam>{
  final FinanceProfileRepository financeProfileRepository;
  CardDefaultUseCase({required this.financeProfileRepository});

  @override
  Future<Either<Failure, CardDefaultEntities>> call(CardDefaultParam param) async{
    return await financeProfileRepository.cardDefault(cardDefaultParam: param) ;
  }

}

