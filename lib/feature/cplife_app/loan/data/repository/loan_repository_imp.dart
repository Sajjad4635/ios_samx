import 'package:ios_samx/core/errors/exceptions/server_exception.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/errors/failures/server_failure.dart';
import 'package:ios_samx/feature/cplife_app/loan/data/data_source/loan_remote_data_source.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/entities/iban_inquiry/iban_inquiry_response.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/entities/register_loan/register_loan_response.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/entities/saved_money/saved_money_response.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/entities/validate_loan/validate_loan_response.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/repository/loan_repository.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/usecase/iban_inquiry/params/iban_inquiry_param.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/usecase/register_loan/param/register_loan_param.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/usecase/saved_money/params/saved_money_param.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/usecase/validate_loan/params/validate_loan_params.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';


@LazySingleton(as: LoanRepository)
class LoanRepositoryImpl extends LoanRepository {
  final LoanRemoteDataSource loanRemoteDataSource;

  LoanRepositoryImpl({required this.loanRemoteDataSource});

  @override
  Future<Either<Failure, IbanInquiryResponseEntities>> ibanInquiry({required IbanInquiryParam param}) async {
    try {
      final ibanInquiryResponseEntities = await loanRemoteDataSource.ibanInquiry(param: param);
      return Right(ibanInquiryResponseEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, SavedMoneyResponseEntities>> savedMoney({required SavedMoneyParam param}) async {
    try {
      final savedMoneyResponseEntities = await loanRemoteDataSource.savedMoney(param: param);
      return Right(savedMoneyResponseEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, RegisterLoanResponseEntities>> registerLoan({required RegisterLoanParam param}) async {
    try {
      final registerLoanResponseEntities = await loanRemoteDataSource.registerLoan(param: param);
      return Right(registerLoanResponseEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }


  @override
  Future<Either<Failure, ValidateLoanResponseEntities>> validateLoan({required ValidateLoanParams param}) async {
    try {
      final validateLoanResponseEntities = await loanRemoteDataSource.validateLoan(param: param);
      return Right(validateLoanResponseEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}