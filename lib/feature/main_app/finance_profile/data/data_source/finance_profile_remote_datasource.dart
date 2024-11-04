import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/entities/add_card/add_card_entities.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/entities/card_default/card_default_entities.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/entities/get_card/get_card_entities.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/entities/remove_card/remove_card_entities.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/entities/update_card_title/update_card_title_entities.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/usecase/account_default/params/account_default_param.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/usecase/add_card/params/add_card_param.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/usecase/card_default/params/card_default_param.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/usecase/get_account_iban/params/get_account_iban_param.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/usecase/remove_card/params/remove_card_param.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/usecase/update_card_title/params/update_card_title_param.dart';

import '../../domain/entities/account_default/account_default_entities.dart';
import '../../domain/entities/account_enable/account_enable_entities.dart';
import '../../domain/entities/get_account/get_account_entities.dart';
import '../../domain/entities/get_account_iban/get_account_iban_entites.dart';
import '../../domain/entities/post_account/post_account_entities.dart';
import '../../domain/usecase/account_enable/params/account_enable_param.dart';
import '../../domain/usecase/post_account/params/post_account_param.dart';

abstract class FinanceProfileRemoteDataSource {
  Future<GetAccountEntities> getAccount({required NoParams noParams});

  Future<PostAccountEntities> postAccount(
      {required PostAccountParam postAccountParams});

  Future<GetAccountIbanEntities> getAccountIban(
      {required GetAccountIbanParam getAccountIbanParam});

  Future<AccountEnableEntities> accountEnable(
      {required AccountEnableParam accountEnableParam});

  Future<AccountDefaultEntities> accountDefault(
      {required AccountDefaultParam accountDefaultParam});

  Future<GetCardEntities> getCardInfo({required NoParams noParams});

  Future<CardDefaultEntities> cardDefault(
      {required CardDefaultParam cardDefaultParam});

  Future<RemoveCardEntities> removeCard(
      {required RemoveCardParam removeCardParam});

  Future<AddCardEntities> addCard({required AddCardParam addCardParam});

  Future<UpdateCardTitleEntities> updateCardTitle(
      {required UpdateCardTitleParam updateCardTitleParam});
}
