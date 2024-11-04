import 'package:ios_samx/feature/main_app/relatives/domain/entities/user_info/user_info_entities.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/user_info_inquiry/params/user_info_inquiry_param.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/user_info_inquiry/user_info_inquiry_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../../core/errors/failures/dio_failure.dart';
import '../../../../../../core/errors/failures/failure.dart';

part 'user_info_inquiry_bloc.freezed.dart';

part 'user_info_inquiry_event.dart';

part 'user_info_inquiry_state.dart';

@lazySingleton
@injectable
class UserInfoInquiryBloc
    extends Bloc<UserInfoInquiryEvent, UserInfoInquiryState> {
  final UserInfoInquiryUseCase userInfoInquiryUseCase;

  UserInfoInquiryBloc({required this.userInfoInquiryUseCase})
      : super(const UserInfoInquiryState.initial());

  @override
  Stream<UserInfoInquiryState> mapEventToState(
      UserInfoInquiryEvent event) async* {
    yield* event.map(userInfoInquiryEventCalled: (e) async* {
      try {
        yield const UserInfoInquiryState.loading();
        final failureOrSuccess = await userInfoInquiryUseCase.call(e.userInfoInquiryParam);
        yield failureOrSuccess.fold(
          (failure) => UserInfoInquiryState.loadFailure(failure),
          (success) => UserInfoInquiryState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield UserInfoInquiryState.loadFailure(e);
      }
    });
  }
}
