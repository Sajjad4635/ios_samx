import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/entities/add_card/add_card_entities.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/repository/finance_profile_repository.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/usecase/add_card/params/add_card_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';
import '../../../../../../core/usecases/usecase.dart';

@injectable
class AddCardUseCase implements UseCase<AddCardEntities , AddCardParam>{
  final FinanceProfileRepository financeProfileRepository;
  AddCardUseCase({required this.financeProfileRepository});

  @override
  Future<Either<Failure, AddCardEntities>> call(AddCardParam param) async{
    return await financeProfileRepository.addCard(addCardParam: param) ;
  }

}

