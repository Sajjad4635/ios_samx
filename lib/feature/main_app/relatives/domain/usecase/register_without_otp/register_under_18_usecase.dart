import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/entities/register_wihout_otp/register_without_otp_entities.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/repository/relatives_repository.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/register_without_otp/params/register_under_18_params.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class RegisterUnder18UseCase implements UseCase<RegisterWithoutOtpEntities, RegisterUnder18Params> {
  final RelativesRepository relativesRepository;

  RegisterUnder18UseCase({required this.relativesRepository});

  @override
  Future<Either<Failure, RegisterWithoutOtpEntities>> call(RegisterUnder18Params registerUnder18Params) async {
    return await relativesRepository.registerUserUnder18(registerUnder18Params: registerUnder18Params);
  }
}
