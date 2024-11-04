import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/cplife_app/insurances/domain/entities/insurances_list_entites/insurances_list_response.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/feature/cplife_app/insurances/domain/usecases/insurances_list/insurances_list_usecase.dart';
import 'package:ios_samx/feature/cplife_app/insurances/domain/usecases/insurances_list/param/insurances_param.dart';


part 'insurances_list_bloc.freezed.dart';
part 'insurances_list_event.dart';
part 'insurances_list_state.dart';

@lazySingleton
@injectable
class InsurancesListBloc extends Bloc<InsurancesListEvent, InsurancesListState> {
  final InsurancesListUseCase insurancesListUseCase;

  InsurancesListBloc({required this.insurancesListUseCase}) : super(const InsurancesListState.initial());

  @override
  Stream<InsurancesListState> mapEventToState(
    InsurancesListEvent event,
  ) async* {
    yield* event.map(insurancesListEventCalled: (e) async* {
      try {
        yield const InsurancesListState.loading();
        final failureOrSuccess = await insurancesListUseCase.call(e.param);
        yield failureOrSuccess.fold(
          (failure) => InsurancesListState.loadFailure(failure),
          (success) => InsurancesListState.loadSuccess(success),
        );
      } on DioFailure catch (error) {
        yield InsurancesListState.loadFailure(error);
      }
    });
  }
}
