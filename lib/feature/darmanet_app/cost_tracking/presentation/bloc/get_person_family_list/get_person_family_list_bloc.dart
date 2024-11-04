import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/get_person_family_list/get_person_family_list_entities.dart';
import '../../../domain/usecase/get_person_family_list/get_person_family_list_usecase.dart';
import '../../../domain/usecase/get_person_family_list/param/get_person_family_list_param.dart';

part 'get_person_family_list_bloc.freezed.dart';
part 'get_person_family_list_event.dart';
part 'get_person_family_list_state.dart';

@lazySingleton
@injectable
class GetPersonFamilyListBloc
    extends Bloc<GetPersonFamilyListEvent, GetPersonFamilyListState> {
  final GetPersonFamilyListUseCase getPersonFamilyListUseCase;

  GetPersonFamilyListBloc({required this.getPersonFamilyListUseCase})
      : super(const GetPersonFamilyListState.initial());

  @override
  Stream<GetPersonFamilyListState> mapEventToState(
      GetPersonFamilyListEvent event) async* {
    yield* event.map(getGetPersonFamilyListEventCalled: (e) async* {
      try {
        yield const GetPersonFamilyListState.loading();
        final failureOrSuccess = await getPersonFamilyListUseCase.call(e.param);
        yield failureOrSuccess.fold(
          (failure) => GetPersonFamilyListState.loadFailure(failure),
          (success) => GetPersonFamilyListState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield GetPersonFamilyListState.loadFailure(e);
      }
    });
  }
}
