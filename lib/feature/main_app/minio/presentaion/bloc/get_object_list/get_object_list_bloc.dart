import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/errors/failures/dio_failure.dart';
import '../../../../../../core/errors/failures/failure.dart';
import '../../../domain/entities/get_object_list/get_object_list_entities.dart';
import '../../../domain/usecase/get_object_list/get_object_list_usecase.dart';
import '../../../domain/usecase/get_object_list/param/get_object_list_param.dart';

part 'get_object_list_bloc.freezed.dart';

part 'get_object_list_event.dart';

part 'get_object_list_state.dart';

@lazySingleton
@injectable
class GetObjectListBloc extends Bloc<GetObjectListEvent, GetObjectListState> {
  final GetObjectListUseCase getObjectListUseCase;

  GetObjectListBloc({required this.getObjectListUseCase})
      : super(const GetObjectListState.initial());

  @override
  Stream<GetObjectListState> mapEventToState(GetObjectListEvent event) async* {
    yield* event.map(getObjectListEventCalled: (e) async* {
      try {
        yield const GetObjectListState.loading();
        final failureOrSuccess = await getObjectListUseCase.call(e.getObjectListParam);
        yield failureOrSuccess.fold(
              (failure) => GetObjectListState.loadFailure(failure),
              (success) => GetObjectListState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield GetObjectListState.loadFailure(e);
      }
    });
  }


}
