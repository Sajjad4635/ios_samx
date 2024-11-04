import 'package:ios_samx/feature/cplife_app/loan/domain/repository/loan_repository.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/usecase/validate_loan/params/validate_loan_params.dart';

import '../../entities/validate_loan/validate_loan_response.dart';

@injectable
class ValidateLoanUseCase extends UseCase<ValidateLoanResponseEntities, ValidateLoanParams> {
  final LoanRepository loanRepository;
  ValidateLoanUseCase({required this.loanRepository});

  @override
  Future<Either<Failure, ValidateLoanResponseEntities>> call(ValidateLoanParams params) async {
    return await loanRepository.validateLoan(param: params);
  }
}
