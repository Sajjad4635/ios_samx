import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../../../core/errors/failures/failure.dart';
import '../../../domain/entities/get_profile/get_profile_entities.dart';
import '../../../domain/usecase/get_profile/get_profile_usecase.dart';

part 'get_profile_bloc.freezed.dart';

part 'get_profile_event.dart';

part 'get_profile_state.dart';

@lazySingleton
@injectable
class GetProfileBloc extends Bloc<GetProfileEvent, GetProfileState> {
  final GetProfileUseCase getProfileUseCase;

  GetProfileBloc({required this.getProfileUseCase})
      : super(const GetProfileState.initial());

  @override
  Stream<GetProfileState> mapEventToState(GetProfileEvent event) async* {
    yield* event.map(getProfileEventCalled: (e) async* {
      try {
        yield const GetProfileState.loading();
        final failureOrSuccess = await getProfileUseCase.call(e.noParams);
        yield failureOrSuccess.fold(
          (failure) => GetProfileState.loadFailure(failure),
          (success) => GetProfileState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield GetProfileState.loadFailure(e);
      }
    });
  }
}
