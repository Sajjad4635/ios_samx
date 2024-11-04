import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/entities/update_card_title/update_card_title_entities.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/repository/finance_profile_repository.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/usecase/update_card_title/params/update_card_title_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';
import '../../../../../../core/usecases/usecase.dart';

@injectable
class UpdateCardTitleUseCase implements UseCase<UpdateCardTitleEntities , UpdateCardTitleParam>{
  final FinanceProfileRepository financeProfileRepository;
  UpdateCardTitleUseCase({required this.financeProfileRepository});

  @override
  Future<Either<Failure, UpdateCardTitleEntities>> call(UpdateCardTitleParam param) async{
    return await financeProfileRepository.updateCardTitle(updateCardTitleParam: param) ;
  }

}

