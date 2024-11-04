import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/get_all_cost_desc/get_all_cost_desc_entities.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/get_all_cost_desc/get_all_cost_desc_usecase.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/get_all_cost_desc/param/get_all_cost_desc_param.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_all_cost_desc_bloc.freezed.dart';

part 'get_all_cost_desc_event.dart';

part 'get_all_cost_desc_state.dart';

@lazySingleton
@injectable
class GetAllCostDescBloc extends Bloc<GetAllCostDescEvent, GetAllCostDescState> {
  final GetAllCostDescUsecase getAllCostDescUsecase;

  GetAllCostDescBloc({required this.getAllCostDescUsecase}) : super(const GetAllCostDescState.initial());

  @override
  Stream<GetAllCostDescState> mapEventToState(GetAllCostDescEvent event) async* {
    yield* event.map(getAllCostDescEventCalled: (e) async* {
      try {
        yield const GetAllCostDescState.loading();
        final failureOrSuccess = await getAllCostDescUsecase.call(e.param);
        yield failureOrSuccess.fold(
          (failure) => GetAllCostDescState.loadFailure(failure),
          (success) => GetAllCostDescState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield GetAllCostDescState.loadFailure(e);
      }
    });
  }
}
