import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/errors/failures/dio_failure.dart';
import '../../../../../../core/errors/failures/failure.dart';
import '../../../domain/entities/zipcode_update/zipcode_update_entities.dart';
import '../../../domain/usecase/zipcode_update/zipcode_update_param/zipcode_update_param.dart';
import '../../../domain/usecase/zipcode_update/zipcode_update_usecase.dart';

part 'zipcode_update_bloc.freezed.dart';
part 'zipcode_update_event.dart';
part 'zipcode_update_state.dart';


@injectable
@lazySingleton

class ZipcodeUpdateBloc extends Bloc<ZipcodeUpdateEvent,ZipcodeUpdateState>{
  final ZipcodeUpdateUseCase zipcodeUpdateUseCase ;

  ZipcodeUpdateBloc({required this.zipcodeUpdateUseCase})
      : super(const ZipcodeUpdateState.initial());


  @override
  Stream<ZipcodeUpdateState> mapEventToState(ZipcodeUpdateEvent event) async* {
    yield* event.map(zipcodeUpdateEventCalled: (e) async* {
      try {
        yield const ZipcodeUpdateState.loading();
        final failureOrSuccess =
        await zipcodeUpdateUseCase.call(e.zipcodeUpdateParam);
        yield failureOrSuccess.fold(
              (failure) => ZipcodeUpdateState.loadFailure(failure),
              (success) => ZipcodeUpdateState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield ZipcodeUpdateState.loadFailure(e);
      }
    });
  }

}
