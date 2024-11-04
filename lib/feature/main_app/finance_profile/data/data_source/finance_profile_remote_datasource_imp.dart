import 'package:ios_samx/core/dio/dio_response_cp.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/entities/account_default/account_default_entities.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/entities/account_enable/account_enable_entities.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/entities/add_card/add_card_entities.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/entities/card_default/card_default_entities.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/entities/get_account/get_account_entities.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/entities/get_account_iban/get_account_iban_entites.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/entities/get_card/get_card_entities.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/entities/post_account/post_account_entities.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/entities/remove_card/remove_card_entities.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/entities/update_card_title/update_card_title_entities.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/usecase/account_default/params/account_default_param.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/usecase/account_enable/params/account_enable_param.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/usecase/add_card/params/add_card_param.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/usecase/card_default/params/card_default_param.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/usecase/get_account_iban/params/get_account_iban_param.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/usecase/remove_card/params/remove_card_param.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/usecase/update_card_title/params/update_card_title_param.dart';
import 'package:dio/dio.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/dio/dio_error_cp.dart';
import '../../domain/usecase/post_account/params/post_account_param.dart';
import 'finance_profile_remote_datasource.dart';

@LazySingleton(as: FinanceProfileRemoteDataSource)
@injectable
class FinanceProfileRemoteDataSourceImpl
    implements FinanceProfileRemoteDataSource {
  final Dio dio;
  String baseUrl = FlavorConfig.instance.variables["baseURL"];

  FinanceProfileRemoteDataSourceImpl({required this.dio});

  @override
  Future<GetAccountEntities> getAccount({required NoParams noParams}) async {
    String url = "${baseUrl}Account";

    try {
      final response = await dio.get(url);

      final GetAccountEntities getAccountEntities = GetAccountEntities(
        DioResponseCPLife.fromJson(response.data),
      );
      return getAccountEntities;
    } on DioError catch (ex) {
      throw handleDioErrorCP(ex);
    }
  }

  @override
  Future<PostAccountEntities> postAccount(
      {required PostAccountParam postAccountParams}) async {
    String url = "${baseUrl}Account";

    try {
      final response = await dio.post(url, data: postAccountParams.toJson());

      final PostAccountEntities postAccountEntities = PostAccountEntities(
          dioResponseCPLife: DioResponseCPLife.fromJson(response.data));
      return postAccountEntities;
    } on DioError catch (ex) {
      throw handleDioErrorCP(ex);
    }
  }

  @override
  Future<GetAccountIbanEntities> getAccountIban(
      {required GetAccountIbanParam getAccountIbanParam}) async {
    String url = "${baseUrl}Account/Iban";

    try {
      final response = await dio.get("$url/${getAccountIbanParam.iban}/Active");
      final GetAccountIbanEntities getAccountIbanEntities =
          GetAccountIbanEntities(
        DioResponseCPLife.fromJson(response.data),
      );
      return getAccountIbanEntities;
    } on DioError catch (ex) {
      throw handleDioErrorCP(ex);
    }
  }

  @override
  Future<AccountEnableEntities> accountEnable(
      {required AccountEnableParam accountEnableParam}) async {
    String url = accountEnableParam.activationStatus
        ? "${baseUrl}Account/Disable"
        : "${baseUrl}Account/Enable";
    try {
      final response = await dio.put(url, data: accountEnableParam.toJson());
      final AccountEnableEntities accountEnableEntities = AccountEnableEntities(
          dioResponseCPLife: DioResponseCPLife.fromJson(response.data));
      return accountEnableEntities;
    } on DioError catch (ex) {
      throw handleDioErrorCP(ex);
    }
  }

  @override
  Future<AccountDefaultEntities> accountDefault(
      {required AccountDefaultParam accountDefaultParam}) async {
    String url = "${baseUrl}Account/Iban/${accountDefaultParam.iban}/Default";

    try {
      final response = await dio.put(url);
      final AccountDefaultEntities accountDefaultEntities =
          AccountDefaultEntities(
              dioResponseCPLife: DioResponseCPLife.fromJson(response.data));

      return accountDefaultEntities;
    } on DioError catch (ex) {
      throw handleDioErrorCP(ex);
    }
  }

  @override
  Future<AddCardEntities> addCard({required AddCardParam addCardParam}) async {
    String url = "${baseUrl}bankcards";

    try {
      final response = await dio.post(url, data: addCardParam.toJson());

      final AddCardEntities addCardEntities =
          AddCardEntities(DioResponseCPLife.fromJson(response.data));
      return addCardEntities;
    } on DioError catch (ex) {
      throw handleDioErrorCP(ex);
    }
  }

  @override
  Future<CardDefaultEntities> cardDefault(
      {required CardDefaultParam cardDefaultParam}) async{
    String url = "${baseUrl}bankcards/${cardDefaultParam.cardId}/default";
    try {
      final response = await dio.patch(url);

      final CardDefaultEntities cardDefaultEntities = CardDefaultEntities(
          dioResponseCPLife: DioResponseCPLife.fromJson(response.data));

      return cardDefaultEntities;
    } on DioError catch (ex) {
      throw handleDioErrorCP(ex);
    }
  }

  @override
  Future<GetCardEntities> getCardInfo({required NoParams noParams}) async {
    String url = "${baseUrl}bankcards";

    try {
      final response = await dio.get(url);
      final GetCardEntities getCardEntities = GetCardEntities(
        DioResponseCPLife.fromJson(response.data),
      );
      return getCardEntities;
    } on DioError catch (ex) {
      throw handleDioErrorCP(ex);
    }
  }

  @override
  Future<RemoveCardEntities> removeCard(
      {required RemoveCardParam removeCardParam}) async{
    String url = "${baseUrl}bankcards/${removeCardParam.cardId}";
    try {
      final response = await dio.delete(url);

      final RemoveCardEntities removeCardEntities = RemoveCardEntities(
          dioResponseCPLife: DioResponseCPLife.fromJson(response.data));

      return removeCardEntities;
    } on DioError catch (ex) {
      throw handleDioErrorCP(ex);
    }
  }

  @override
  Future<UpdateCardTitleEntities> updateCardTitle({required UpdateCardTitleParam updateCardTitleParam}) async{
    String url = "${baseUrl}bankcards";

    try {
      final response = await dio.put(url , data: updateCardTitleParam.toJson());
      final UpdateCardTitleEntities updateCardTitleEntities =
      UpdateCardTitleEntities(
          dioResponseCPLife: DioResponseCPLife.fromJson(response.data));

      return updateCardTitleEntities;
    } on DioError catch (ex) {
      throw handleDioErrorCP(ex);
    }
  }
}
