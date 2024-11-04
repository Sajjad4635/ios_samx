import 'package:ios_samx/feature/main_app/relatives/domain/entities/relatives_list/relatives_list_entities.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/get_relatives_type_list/get_relatives_type_list_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../../core/errors/failures/dio_failure.dart';
import '../../../../../../core/errors/failures/failure.dart';
import '../../../../../../core/usecases/usecase.dart';

part 'relatives_type_list_bloc.freezed.dart';
part 'relatives_type_list_event.dart';
part 'relatives_type_list_state.dart';

@lazySingleton
@injectable

class RelativesTypeListBloc extends Bloc<RelativesTypeListEvent, RelativesTypeListState>{
  final GetRelativesTypeListUseCase relativesListUseCase ;
  RelativesTypeListBloc({required this.relativesListUseCase}) : super (const RelativesTypeListState.initial());


  @override
  Stream<RelativesTypeListState> mapEventToState(RelativesTypeListEvent event) async* {
    yield* event.map(relativesTypeListEventCalled: (e) async* {
      try {
        yield const RelativesTypeListState.loading();
        final failureOrSuccess = await relativesListUseCase.call(e.noParams);
        yield failureOrSuccess.fold(
              (failure) => RelativesTypeListState.loadFailure(failure),
              (success) => RelativesTypeListState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield RelativesTypeListState.loadFailure(e);
      }
    });
  }


}