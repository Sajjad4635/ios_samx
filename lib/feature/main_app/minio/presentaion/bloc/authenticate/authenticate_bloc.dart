import 'package:ios_samx/feature/main_app/minio/domain/entities/authenticate/authenticate_entities.dart';
import 'package:ios_samx/feature/main_app/minio/domain/usecase/authenticate/authenticate_usecase.dart';
import 'package:ios_samx/feature/main_app/minio/domain/usecase/authenticate/param/authenticate_param.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/errors/failures/dio_failure.dart';
import '../../../../../../core/errors/failures/failure.dart';

part 'authenticate_event.dart';
part 'authenticate_bloc.freezed.dart';
part 'authenticate_state.dart';

@lazySingleton
@injectable
class AuthenticateBloc extends Bloc<AuthenticateBlocEvent, AuthenticateBlocState> {
  final AuthenticateUseCase authenticateUseCase ;

  AuthenticateBloc({required this.authenticateUseCase}) : super ( const AuthenticateBlocState.initial());

  @override
  Stream<AuthenticateBlocState> mapEventToState(AuthenticateBlocEvent event) async* {
    yield* event.map(authBlocEventCalled: (e) async* {
      try {
        yield const AuthenticateBlocState.loading();
        final failureOrSuccess = await authenticateUseCase.call(e.authenticateParam);
        yield failureOrSuccess.fold(
              (failure) => AuthenticateBlocState.loadFailure(failure),
              (success) => AuthenticateBlocState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield AuthenticateBlocState.loadFailure(e);
      }
    });


  }
}
