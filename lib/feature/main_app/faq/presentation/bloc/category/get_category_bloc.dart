import 'package:ios_samx/core/usecases/usecase.dart';

import 'package:ios_samx/feature/main_app/faq/domain/use_case/category/get_category_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/errors/failures/dio_failure.dart';
import '../../../../../../core/errors/failures/failure.dart';
import '../../../domain/entities/category/get_category_entities.dart';

part 'get_category_bloc.freezed.dart';

part 'get_category_event.dart';

part 'get_category_state.dart';

@lazySingleton
@injectable
class GetCategoryBloc extends Bloc<GetCategoryEvent, GetCategoryState> {
  final GetCategoryUseCase getCategoryUseCase;

  GetCategoryBloc({required this.getCategoryUseCase})
      : super(const GetCategoryState.initial());

  @override
  Stream<GetCategoryState> mapEventToState(GetCategoryEvent event) async* {
    yield* event.map(getCategoryEventCalled: (e) async* {
      try {
        yield const GetCategoryState.loading();
        final failureOrSuccess = await getCategoryUseCase.call(e.noParams);
        yield failureOrSuccess.fold(
          (failure) => GetCategoryState.loadFailure(failure),
          (success) => GetCategoryState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield GetCategoryState.loadFailure(e);
      }
    });
  }
}
