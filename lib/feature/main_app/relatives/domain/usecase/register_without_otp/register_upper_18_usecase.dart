import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/entities/register_wihout_otp/register_without_otp_entities.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/repository/relatives_repository.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/register_without_otp/params/register_upper_18_params.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class RegisterUpper18UseCase implements UseCase<RegisterWithoutOtpEntities, RegisterUpper18Params> {
  final RelativesRepository relativesRepository;

  RegisterUpper18UseCase({required this.relativesRepository});

  @override
  Future<Either<Failure, RegisterWithoutOtpEntities>> call(RegisterUpper18Params registerUpper18Params) async {
    return await relativesRepository.registerUserUpper18(registerUpper18Params: registerUpper18Params);
  }
}
