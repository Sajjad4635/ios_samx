import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/entities/user_info/user_info_entities.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/repository/relatives_repository.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/user_info_inquiry/params/user_info_inquiry_param.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserInfoInquiryUseCase implements UseCase<UserInfoEntities, UserInfoInquiryParam> {
  final RelativesRepository relativesRepository;

  UserInfoInquiryUseCase({required this.relativesRepository});

  @override
  Future<Either<Failure, UserInfoEntities>> call(UserInfoInquiryParam userInfoInquiryParam) async {
    return await relativesRepository.userInfoInquiry(userInfoInquiryParam: userInfoInquiryParam);
  }
}
