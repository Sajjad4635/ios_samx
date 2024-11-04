import 'package:ios_samx/feature/cplife_app/loan/domain/entities/iban_inquiry/iban_inquiry_response.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/repository/loan_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:either_dart/src/either.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/usecase/iban_inquiry/params/iban_inquiry_param.dart';

@injectable
class IbanInquiryUseCase implements UseCase<IbanInquiryResponseEntities, IbanInquiryParam> {
  final LoanRepository loanRepository;
  IbanInquiryUseCase(this.loanRepository);

  @override
  Future<Either<Failure, IbanInquiryResponseEntities>> call(IbanInquiryParam params) async {
    return await loanRepository.ibanInquiry(param: params);
  }
}
