import 'package:ios_samx/feature/cplife_app/loan/domain/entities/register_loan/register_loan_response.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/repository/loan_repository.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/usecase/register_loan/param/register_loan_param.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:either_dart/src/either.dart';
import 'package:ios_samx/core/usecases/usecase.dart';

@injectable
class RegisterLoanUseCase extends UseCase<RegisterLoanResponseEntities, RegisterLoanParam> {
  final LoanRepository loanRepository;

  RegisterLoanUseCase({required this.loanRepository});

  @override
  Future<Either<Failure, RegisterLoanResponseEntities>> call(RegisterLoanParam params) async {
    return await loanRepository.registerLoan(param: params);
  }
}
