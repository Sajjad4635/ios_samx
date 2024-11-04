import 'package:ios_samx/feature/main_app/faq/domain/use_case/search/params/faq_search_params.dart';

import '../../../../../core/usecases/usecase.dart';
import '../../domain/entities/category/get_category_entities.dart';
import '../../domain/entities/faq/get_faq_entity.dart';

import '../../domain/use_case/faq/params/get_faq_param.dart';

abstract class FaqRemoteDataSource {
  Future<GetCategoryEntities> faqCategory({required NoParams noParams});
  Future<FaqEntity> faqList({required FaqParam faqParam});
  Future<FaqEntity> faqSearch({required FaqSearchParams faqSearchParams});
}
