import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/faq/domain/entities/faq/get_faq_entity.dart';
import 'package:ios_samx/feature/main_app/faq/domain/repository/faq_repository.dart';
import 'package:ios_samx/feature/main_app/faq/domain/use_case/faq/params/get_faq_param.dart';

import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class FAQUseCase implements UseCase<FaqEntity, FaqParam> {
  final FaqRepository faqRepository;

  FAQUseCase({required this.faqRepository});

  @override
  Future<Either<Failure, FaqEntity>> call(FaqParam params) async {
    return await faqRepository.faqListQa(params: params);
  }
}
