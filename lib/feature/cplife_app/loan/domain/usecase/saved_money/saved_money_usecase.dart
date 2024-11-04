import 'package:ios_samx/feature/cplife_app/loan/domain/entities/saved_money/saved_money_response.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/repository/loan_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:either_dart/src/either.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/usecase/saved_money/params/saved_money_param.dart';

@injectable
class SavedMoneyUseCase extends UseCase<SavedMoneyResponseEntities, SavedMoneyParam> {
  final LoanRepository loanRepository;
  SavedMoneyUseCase({required this.loanRepository});
  @override
  Future<Either<Failure, SavedMoneyResponseEntities>> call(SavedMoneyParam params) async {
    return await loanRepository.savedMoney(param: params);
  }
}
