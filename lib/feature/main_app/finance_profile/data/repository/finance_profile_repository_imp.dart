import 'package:ios_samx/core/errors/failures/failure.dart';
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
import 'package:ios_samx/feature/main_app/finance_profile/domain/usecase/post_account/params/post_account_param.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/usecase/remove_card/params/remove_card_param.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/usecase/update_card_title/params/update_card_title_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/errors/exceptions/server_exception.dart';
import '../../../../../core/errors/failures/server_failure.dart';
import '../../domain/repository/finance_profile_repository.dart';
import '../data_source/finance_profile_remote_datasource.dart';

@LazySingleton(as: FinanceProfileRepository)
class FinanceProfileRepositoryImpl implements FinanceProfileRepository {
  FinanceProfileRemoteDataSource financeProfileRemoteDataSource;

  FinanceProfileRepositoryImpl({required this.financeProfileRemoteDataSource});

  @override
  Future<Either<Failure, GetAccountEntities>> getAccount({required NoParams noParams}) async {

    try {
      final GetAccountEntities getAccountEntities = await financeProfileRemoteDataSource.getAccount(noParams: noParams);
      return Right(getAccountEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, PostAccountEntities>> postAccount({required PostAccountParam postAccountParam}) async{

    try{
      final PostAccountEntities postAccountEntities = await financeProfileRemoteDataSource.postAccount(postAccountParams: postAccountParam);
      return Right(postAccountEntities);
    }
    on ServerException {
      return Left(ServerFailure());
    }

  }

  @override
  Future<Either<Failure, GetAccountIbanEntities>> getAccountIban({required GetAccountIbanParam getAccountIbanParam}) async{
    try{
      final GetAccountIbanEntities getAccountIbanEntities = await financeProfileRemoteDataSource.getAccountIban(getAccountIbanParam: getAccountIbanParam) ;
      return Right(getAccountIbanEntities);
    }
    on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, AccountEnableEntities>> accountEnable({required AccountEnableParam accountEnableParam}) async{
      try{
        final AccountEnableEntities accountEnableEntities = await financeProfileRemoteDataSource.accountEnable(accountEnableParam:accountEnableParam) ;
        return Right(accountEnableEntities) ;
      }  on ServerException {
        return Left(ServerFailure());
      }
  }

  @override
  Future<Either<Failure, AccountDefaultEntities>> accountDefault({required AccountDefaultParam accountDefaultParam}) async {
    try{
      final AccountDefaultEntities accountDefaultEntities = await financeProfileRemoteDataSource.accountDefault(accountDefaultParam: accountDefaultParam);
      return Right(accountDefaultEntities) ;
    }on ServerException {
      return Left(ServerFailure());
    }

  }

  @override
  Future<Either<Failure, AddCardEntities>> addCard({required AddCardParam addCardParam}) async{
    try{
      final AddCardEntities addCardEntities = await financeProfileRemoteDataSource.addCard(addCardParam: addCardParam);
      return Right(addCardEntities) ;
    }on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, CardDefaultEntities>> cardDefault({required CardDefaultParam cardDefaultParam}) async{
    try{
      final CardDefaultEntities cardDefaultEntities = await financeProfileRemoteDataSource.cardDefault(cardDefaultParam: cardDefaultParam);
      return Right(cardDefaultEntities) ;
    }on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, GetCardEntities>> getCardInfo({required NoParams noParams}) async{
    try{
      final GetCardEntities getCardEntities = await financeProfileRemoteDataSource.getCardInfo(noParams: noParams);
      return Right(getCardEntities) ;
    }on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, RemoveCardEntities>> removeCard({required RemoveCardParam removeCardParam}) async{
    try{
      final RemoveCardEntities removeCardEntities = await financeProfileRemoteDataSource.removeCard(removeCardParam: removeCardParam);
      return Right(removeCardEntities) ;
    }on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, UpdateCardTitleEntities>> updateCardTitle({required UpdateCardTitleParam updateCardTitleParam}) async{
    try{
      final UpdateCardTitleEntities updateCardTitleEntities = await financeProfileRemoteDataSource.updateCardTitle(updateCardTitleParam: updateCardTitleParam);
      return Right(updateCardTitleEntities) ;
    }on ServerException {
      return Left(ServerFailure());
    }
  }
}



