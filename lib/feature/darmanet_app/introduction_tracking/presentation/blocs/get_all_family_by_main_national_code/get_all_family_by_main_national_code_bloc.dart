import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/entities/get_all_family_by_main_national_code/get_family_by_main_national_code_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/get_all_family_by_main_national_code/get_all_family_by_main_national_code_use_case.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/get_all_family_by_main_national_code/param/get_all_family_by_main_national_code_param.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_all_family_by_main_national_code_bloc.freezed.dart';
part 'get_all_family_by_main_national_code_event.dart';
part 'get_all_family_by_main_national_code_state.dart';

@lazySingleton
@injectable
class GetAllFamilyByMainNationalCodeBloc extends Bloc<GetAllFamilyByMainNationalCodeEvent, GetAllFamilyByMainNationalCodeState> {
  final GetAllFamilyByMainNationalCodeUseCase getAllFamilyByMainNationalCodeUseCase;
  GetAllFamilyByMainNationalCodeBloc({required this.getAllFamilyByMainNationalCodeUseCase}) : super(const GetAllFamilyByMainNationalCodeState.initial());

  @override
  Stream<GetAllFamilyByMainNationalCodeState> mapEventToState(GetAllFamilyByMainNationalCodeEvent event) async* {
    yield* event.map(getAllFamilyByMainNationalCodeEventCalled: (e) async* {
      try {
        yield const GetAllFamilyByMainNationalCodeState.loading();
        final failureOrSuccess = await getAllFamilyByMainNationalCodeUseCase.call(e.param);
        yield failureOrSuccess.fold(
          (failure) => GetAllFamilyByMainNationalCodeState.loadFailure(failure),
          (success) => GetAllFamilyByMainNationalCodeState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield GetAllFamilyByMainNationalCodeState.loadFailure(e);
      } 
    });
  }
}