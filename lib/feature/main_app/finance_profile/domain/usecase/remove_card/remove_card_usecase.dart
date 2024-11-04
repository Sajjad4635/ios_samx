import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/entities/remove_card/remove_card_entities.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/repository/finance_profile_repository.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/usecase/remove_card/params/remove_card_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';
import '../../../../../../core/usecases/usecase.dart';

@injectable
class RemoveCardUseCase implements UseCase<RemoveCardEntities , RemoveCardParam>{
  final FinanceProfileRepository financeProfileRepository;
  RemoveCardUseCase({required this.financeProfileRepository});

  @override
  Future<Either<Failure, RemoveCardEntities>> call(RemoveCardParam param) async{
    return await financeProfileRepository.removeCard(removeCardParam: param) ;
  }

}

