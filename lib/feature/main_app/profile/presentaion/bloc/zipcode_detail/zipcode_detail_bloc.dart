import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/errors/failures/dio_failure.dart';
import '../../../../../../core/errors/failures/failure.dart';
import '../../../domain/entities/zipcode_detail/zipcode_entities.dart';
import '../../../domain/usecase/zipcode_detail/zipcode_detail_param/zipcode_detail_param.dart';
import '../../../domain/usecase/zipcode_detail/zipcode_detail_usecase.dart';

part 'zipcode_detail_bloc.freezed.dart';

part 'zipcode_detail_event.dart';

part 'zipcode_detail_state.dart';

@injectable
@lazySingleton
class ZipcodeDetailBloc extends Bloc<ZipcodeDetailEvent, ZipcodeDetailState> {
  final ZipcodeDetailUseCase zipcodeDetailUseCase;

  ZipcodeDetailBloc({required this.zipcodeDetailUseCase})
      : super(const ZipcodeDetailState.initial());

  @override
  Stream<ZipcodeDetailState> mapEventToState(ZipcodeDetailEvent event) async* {
    yield* event.map(getZipcodeDetailEventCalled: (e) async* {
      try {
        yield const ZipcodeDetailState.loading();
        final failureOrSuccess =
            await zipcodeDetailUseCase.call(e.zipcodeDetailParam);
        yield failureOrSuccess.fold(
          (failure) => ZipcodeDetailState.loadFailure(failure),
          (success) => ZipcodeDetailState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield ZipcodeDetailState.loadFailure(e);
      }
    });
  }
}
