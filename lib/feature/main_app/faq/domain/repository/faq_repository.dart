import 'package:either_dart/either.dart';

import '../../../../../core/errors/failures/failure.dart';
import '../../../../../core/usecases/usecase.dart';
import '../entities/category/get_category_entities.dart';
import '../entities/faq/get_faq_entity.dart';
import '../use_case/faq/params/get_faq_param.dart';
import '../use_case/search/params/faq_search_params.dart';

abstract class FaqRepository {
  Future<Either<Failure,GetCategoryEntities>> faqCategory({required NoParams noParams});
  Future<Either<Failure, FaqEntity>> faqListQa({required FaqParam params}) ;
  Future<Either<Failure, FaqEntity>> faqSearch({required FaqSearchParams params});

}