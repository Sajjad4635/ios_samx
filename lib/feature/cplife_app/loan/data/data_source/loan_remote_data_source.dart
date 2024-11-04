import 'package:ios_samx/feature/cplife_app/loan/domain/entities/iban_inquiry/iban_inquiry_response.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/entities/register_loan/register_loan_response.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/entities/saved_money/saved_money_response.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/usecase/iban_inquiry/params/iban_inquiry_param.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/usecase/register_loan/param/register_loan_param.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/entities/validate_loan/validate_loan_response.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/usecase/saved_money/params/saved_money_param.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/usecase/validate_loan/params/validate_loan_params.dart';


abstract class LoanRemoteDataSource {
  Future<IbanInquiryResponseEntities> ibanInquiry({required IbanInquiryParam param});
  Future<SavedMoneyResponseEntities> savedMoney({required SavedMoneyParam param});
  Future<RegisterLoanResponseEntities> registerLoan({required RegisterLoanParam param});
  Future<ValidateLoanResponseEntities> validateLoan({required ValidateLoanParams param});
}