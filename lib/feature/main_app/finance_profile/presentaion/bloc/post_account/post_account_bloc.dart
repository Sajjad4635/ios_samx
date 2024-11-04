import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/errors/failures/dio_failure.dart';
import '../../../../../../core/errors/failures/failure.dart';
import '../../../domain/entities/post_account/post_account_entities.dart';
import '../../../domain/usecase/post_account/params/post_account_param.dart';
import '../../../domain/usecase/post_account/post_account_usecase.dart';

part 'post_account_event.dart';

part 'post_account_state.dart';

part 'post_account_bloc.freezed.dart';

@lazySingleton
@injectable
class PostAccountBloc extends Bloc<PostAccountEvent, PostAccountState> {
  final PostAccountUseCase postAccountUseCase;

  PostAccountBloc({required this.postAccountUseCase})
      : super(const PostAccountState.initial());

  @override
  Stream<PostAccountState> mapEventToState(PostAccountEvent event) async* {
    yield* event.map(postAccountEventCalled: (e) async* {
      try {
        yield const PostAccountState.loading();
        final failureOrSuccess = await postAccountUseCase.call(e.postAccountParam);
        yield failureOrSuccess.fold(
              (failure) => PostAccountState.loadFailure(failure),
              (success) => PostAccountState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield PostAccountState.loadFailure(e);
      }
    });
  }
}
