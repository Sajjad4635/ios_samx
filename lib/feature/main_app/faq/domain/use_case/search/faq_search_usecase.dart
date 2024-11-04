
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/faq/domain/entities/faq/get_faq_entity.dart';
import 'package:ios_samx/feature/main_app/faq/domain/repository/faq_repository.dart';
import 'package:ios_samx/feature/main_app/faq/domain/use_case/search/params/faq_search_params.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class FaqSearchUseCase implements UseCase<FaqEntity, FaqSearchParams>{

  final FaqRepository repository ;

  FaqSearchUseCase({required this.repository});

  @override
  Future<Either<Failure, FaqEntity>> call(FaqSearchParams params) async{
    return await repository.faqSearch(params: params);
  }

}