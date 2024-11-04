import 'package:ios_samx/feature/main_app/faq/domain/entities/faq/get_faq_entity.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/errors/failures/failure.dart';
import '../../../domain/use_case/faq/get_faq_usecase.dart';
import '../../../domain/use_case/faq/params/get_faq_param.dart';

part 'faq_qa_event.dart';
part 'faq_qa_state.dart';
part 'faq_qa_bloc.freezed.dart';

@lazySingleton
@injectable
class FaqQaBloc extends Bloc<FaqQaEvent, FaqQaState> {
  final FAQUseCase faqUseCase;

  FaqQaBloc({required this.faqUseCase}) : super(const FaqQaState.initial());

  @override
  Stream<FaqQaState> mapEventToState(FaqQaEvent event) async* {

    yield* event.map(faqQaEventCalled: (e) async* {
      try{
        yield const FaqQaState.loading() ;
        final failureOrSuccess = await faqUseCase.call(e.param) ;
        yield failureOrSuccess.fold(
                (failure) => FaqQaState.loadFailure(failure),
                (success) => FaqQaState.loadSuccess(success)
        );
      }on Failure catch(error){
        yield FaqQaState.loadFailure(error);
      }
    });


  }
}
