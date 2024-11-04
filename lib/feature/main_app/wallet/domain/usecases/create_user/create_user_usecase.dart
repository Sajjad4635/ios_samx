import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/create_user/create_user_entities.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/repository/wallet_repository.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/create_user/params/create_user_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class CreateUserUseCase implements UseCase<CreateUserEntities, CreateUserParam> {
  final WalletRepository walletRepository;

  const CreateUserUseCase({required this.walletRepository});

  @override
  Future<Either<Failure, CreateUserEntities>> call(CreateUserParam params) async {
    return await walletRepository.createUser(param: params);
  }
}
