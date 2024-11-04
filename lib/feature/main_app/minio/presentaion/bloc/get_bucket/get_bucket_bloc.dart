import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/errors/failures/dio_failure.dart';
import '../../../../../../core/errors/failures/failure.dart';
import '../../../domain/entities/get_bucket/get_bucket_entities.dart';
import '../../../domain/usecase/get_bucket/get_bucket_usecase.dart';
import '../../../domain/usecase/get_bucket/param/get_bucket_param.dart';

part 'get_bucket_event.dart';

part 'get_bucket_state.dart';

part 'get_bucket_bloc.freezed.dart';

@lazySingleton
@injectable
class GetBucketBloc extends Bloc<GetBucketEvent, GetBucketState> {
  final GetBucketUseCase getBucketUseCase;

  GetBucketBloc({required this.getBucketUseCase})
      : super(const GetBucketState.initial());

  @override
  Stream<GetBucketState> mapEventToState(GetBucketEvent event) async* {
    yield* event.map(getBucketEventCalled: (e) async* {
      try {
        yield const GetBucketState.loading();
        final failureOrSuccess = await getBucketUseCase.call(e.getBucketParam);
        yield failureOrSuccess.fold(
          (failure) => GetBucketState.loadFailure(failure),
          (success) => GetBucketState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield GetBucketState.loadFailure(e);
      }
    });
  }
}
