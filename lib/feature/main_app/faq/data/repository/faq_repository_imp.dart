import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/faq/domain/entities/faq/get_faq_entity.dart';

import 'package:ios_samx/feature/main_app/faq/domain/use_case/search/params/faq_search_params.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/errors/exceptions/server_exception.dart';
import '../../../../../core/errors/failures/server_failure.dart';
import '../../domain/entities/category/get_category_entities.dart';
import '../../domain/repository/faq_repository.dart';
import '../../domain/use_case/faq/params/get_faq_param.dart';
import '../data_source/faq_remote_datasource.dart';

@LazySingleton(as: FaqRepository)
class FaqRepositoryImpl implements FaqRepository {
  FaqRemoteDataSource faqRemoteDataSource;

  FaqRepositoryImpl({required this.faqRemoteDataSource});

  @override
  Future<Either<Failure, GetCategoryEntities>> faqCategory(
      {required NoParams noParams}) async {
    try {
      final GetCategoryEntities getCategoryEntities = await faqRemoteDataSource.faqCategory(noParams: noParams);
      return Right(getCategoryEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, FaqEntity>> faqListQa({required FaqParam params}) async{
    try{
      final FaqEntity faqEntity = await faqRemoteDataSource.faqList( faqParam: params) ;
      return Right(faqEntity);
    }on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, FaqEntity>> faqSearch({required FaqSearchParams params}) async{
     try{
       final FaqEntity faqEntity = await faqRemoteDataSource.faqSearch(faqSearchParams: params);
       return Right(faqEntity);
     }on ServerException {
       return Left(ServerFailure());
     }
  }
}
