import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/entities/add_card/add_card_entities.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/entities/card_default/card_default_entities.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/entities/get_card/get_card_entities.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/entities/remove_card/remove_card_entities.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/entities/update_card_title/update_card_title_entities.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/usecase/add_card/params/add_card_param.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/usecase/card_default/params/card_default_param.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/usecase/remove_card/params/remove_card_param.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/usecase/update_card_title/params/update_card_title_param.dart';
import 'package:either_dart/either.dart';

import '../entities/account_default/account_default_entities.dart';
import '../entities/account_enable/account_enable_entities.dart';
import '../entities/get_account/get_account_entities.dart';
import '../entities/get_account_iban/get_account_iban_entites.dart';
import '../entities/post_account/post_account_entities.dart';
import '../usecase/account_default/params/account_default_param.dart';
import '../usecase/account_enable/params/account_enable_param.dart';
import '../usecase/get_account_iban/params/get_account_iban_param.dart';
import '../usecase/post_account/params/post_account_param.dart';

abstract class FinanceProfileRepository {
  Future<Either<Failure, GetAccountEntities>> getAccount(
      {required NoParams noParams});

  Future<Either<Failure, PostAccountEntities>> postAccount(
      {required PostAccountParam postAccountParam});

  Future<Either<Failure, GetAccountIbanEntities>> getAccountIban(
      {required GetAccountIbanParam getAccountIbanParam});

  Future<Either<Failure, AccountEnableEntities>> accountEnable(
      {required AccountEnableParam accountEnableParam});

  Future<Either<Failure, AccountDefaultEntities>> accountDefault(
      {required AccountDefaultParam accountDefaultParam});

  Future<Either<Failure, GetCardEntities>> getCardInfo(
      {required NoParams noParams});

  Future<Either<Failure, CardDefaultEntities>> cardDefault(
      {required CardDefaultParam cardDefaultParam});

  Future<Either<Failure, RemoveCardEntities>> removeCard(
      {required RemoveCardParam removeCardParam});

  Future<Either<Failure, AddCardEntities>> addCard(
      {required AddCardParam addCardParam});

  Future<Either<Failure, UpdateCardTitleEntities>> updateCardTitle(
      {required UpdateCardTitleParam updateCardTitleParam});
}
