import 'package:ios_samx/core/dio/dio_error_cp.dart';
import 'package:ios_samx/core/dio/dio_response_cp.dart';
import 'package:ios_samx/feature/cplife_app/loan/data/data_source/loan_remote_data_source.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/entities/iban_inquiry/iban_inquiry_response.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/entities/register_loan/register_loan_response.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/entities/saved_money/saved_money_response.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/usecase/register_loan/param/register_loan_param.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/entities/validate_loan/validate_loan_response.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/usecase/iban_inquiry/params/iban_inquiry_param.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/usecase/saved_money/params/saved_money_param.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/usecase/validate_loan/params/validate_loan_params.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: LoanRemoteDataSource)
@injectable
class LoanRemoteDataSourceImp implements LoanRemoteDataSource {
  final Dio dio;
  LoanRemoteDataSourceImp({required this.dio});

  @override
  Future<IbanInquiryResponseEntities> ibanInquiry({required IbanInquiryParam param}) async {
    String url = "iban";
    try {
      final response = await dio.get("$url/IR${param.ibanNumber}");
      final IbanInquiryResponseEntities ibanInquiryResponseEntities = IbanInquiryResponseEntities(
        DioResponseCPLife.fromJson(response.data!),
      );
      return ibanInquiryResponseEntities;
    } on DioError catch (e) {
      throw handleDioErrorCP(e);
    }
  }

  @override
  Future<SavedMoneyResponseEntities> savedMoney({required SavedMoneyParam param}) async {
    String url = "savedMoney";
    try {
      final response = await dio.get(
        "insurances/${param.policyId}/$url",
      );
      final SavedMoneyResponseEntities savedMoneyResponseEntities = SavedMoneyResponseEntities(
        DioResponseCPLife.fromJson(response.data!),
      );
      return savedMoneyResponseEntities;
    } on DioError catch (e) {
      throw handleDioErrorCP(e);
    }
  }

  @override
  Future<RegisterLoanResponseEntities> registerLoan({required RegisterLoanParam param}) async {
    String url = "loans";

    try {
      final response = await dio.post(
        url,
        data: param.toJson(),
      );
      final RegisterLoanResponseEntities registerLoanResponseEntities = RegisterLoanResponseEntities(
        DioResponseCPLife.fromJson(response.data!),
      );
      return registerLoanResponseEntities;
    } on DioError catch (e) {
      throw handleDioErrorCP(e);
    }
  }


  @override
  Future<ValidateLoanResponseEntities> validateLoan({required ValidateLoanParams param}) async {
    String url = "loans/validate";
    try {
      final response = await dio.get(
        "$url?policyId=${param.policyId}",
      );
      final ValidateLoanResponseEntities validateLoanResponseEntities = ValidateLoanResponseEntities(
        dioResponseCPLife: DioResponseCPLife.fromJson(response.data),
      );
      return validateLoanResponseEntities;
    } on DioError catch (e) {
      throw handleDioErrorCP(e);
    }
  }

}
