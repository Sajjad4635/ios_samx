import 'package:ios_samx/feature/main_app/faq/domain/entities/faq/get_faq_entity.dart';
import 'package:ios_samx/feature/main_app/faq/domain/use_case/search/params/faq_search_params.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/errors/failures/failure.dart';
import '../../../domain/use_case/search/faq_search_usecase.dart';

part 'faq_search_event.dart';
part 'faq_search_state.dart';
part 'faq_search_bloc.freezed.dart';

@lazySingleton
@injectable
class FaqSearchBloc extends Bloc<FaqSearchEvent, FaqSearchState> {

  FaqSearchUseCase useCase ;

  FaqSearchBloc({required this.useCase}) : super(const FaqSearchState.initial()) ;

  @override
  Stream<FaqSearchState> mapEventToState(FaqSearchEvent event) async* {

    yield* event.map(faqSearchEventCalled: (e) async*{
      try{
        yield const FaqSearchState.loading() ;
        final failureOrSuccess = await useCase.call(e.params);
        yield failureOrSuccess.fold(
                (failure) => FaqSearchState.loadFailure(failure),
                (success) => FaqSearchState.loadSuccess(success)
        );

      }on Failure catch(failure){
        yield FaqSearchState.loadFailure(failure);
      }

    },);

  }
}
