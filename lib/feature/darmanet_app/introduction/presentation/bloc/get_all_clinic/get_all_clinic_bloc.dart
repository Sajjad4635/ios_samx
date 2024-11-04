
import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/entities/get_all_clinic/get_all_clinic_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/usecase/get_all_clinic/get_all_clinic_usecase.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/usecase/get_all_clinic/param/get_all_clinic_param.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_all_clinic_bloc.freezed.dart';
part 'get_all_clinic_event.dart';
part 'get_all_clinic_state.dart';

@lazySingleton
@injectable
class GetAllClinicBloc extends Bloc<GetAllClinicEvent, GetAllClinicState> {
  final GetAllClinicUseCase getAllClinicUseCase;
  GetAllClinicBloc({required this.getAllClinicUseCase}) : super(const GetAllClinicState.initial());

  @override
  Stream<GetAllClinicState> mapEventToState(GetAllClinicEvent event) async* {
    yield* event.map(getAllClinicEventCalled: (e) async* {
      try {
        yield const GetAllClinicState.loading();
        final failureOrSuccess = await getAllClinicUseCase.call(e.param);
        yield failureOrSuccess.fold(
          (failure) => GetAllClinicState.loadFailure(failure),
          (success) => GetAllClinicState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield GetAllClinicState.loadFailure(e);
      } 
    });
  }
}