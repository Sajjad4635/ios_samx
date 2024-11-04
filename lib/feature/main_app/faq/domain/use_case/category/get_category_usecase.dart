import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../entities/category/get_category_entities.dart';

import '../../repository/faq_repository.dart';

@injectable
class GetCategoryUseCase implements UseCase<GetCategoryEntities, NoParams> {
  final FaqRepository faqRepository;

  GetCategoryUseCase({required this.faqRepository});

  @override
  Future<Either<Failure, GetCategoryEntities>> call(NoParams noParams) async {
    return await faqRepository.faqCategory(noParams: noParams);
  }
}
