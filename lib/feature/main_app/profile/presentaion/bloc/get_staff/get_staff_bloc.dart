import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../../core/errors/failures/dio_failure.dart';
import '../../../domain/entities/get_staff/get_staff_entities.dart';
import '../../../domain/usecase/get_staff/get_staff_usecase.dart';
import '../../../domain/usecase/get_staff/param/get_staff_param.dart';

part 'get_staff_bloc.freezed.dart';
part 'get_staff_event.dart';
part 'get_staff_state.dart';

@lazySingleton
@injectable
class GetStaffBloc extends Bloc<GetStaffEvent, GetStaffState> {
  final GetStaffUseCase getStaffUseCase ;
  GetStaffBloc({required this.getStaffUseCase}) : super (const GetStaffState.initial());

  @override
  Stream<GetStaffState> mapEventToState(GetStaffEvent event) async* {
    yield* event.map(getStaffEventCalled: (e) async* {
      try{
        yield const GetStaffState.loading();
        final failureOrSuccess = await getStaffUseCase.call(e.getStaffParam);
        yield failureOrSuccess.fold(
              (failure) => GetStaffState.loadFailure(failure),
              (success) => GetStaffState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield GetStaffState.loadFailure(e);
      }
    });
  }

}
