import 'package:ios_samx/feature/cplife_app/buy_back/domain/entities/register_buy_back/register_buy_back_response_entities.dart';
import 'package:ios_samx/feature/cplife_app/buy_back/domain/repository/buy_back_repository.dart';
import 'package:ios_samx/feature/cplife_app/buy_back/domain/usecase/register_buy_back/params/register_buy_back_params.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:either_dart/src/either.dart';
import 'package:ios_samx/core/usecases/usecase.dart';

@injectable
class RegisterBuyBackUseCase extends UseCase<RegisterBuyBackResponseEntities, RegisterBuyBackParams> {
  final BuyBackRepository buyBackRepository;
  RegisterBuyBackUseCase({required this.buyBackRepository});

  @override
  Future<Either<Failure, RegisterBuyBackResponseEntities>> call(RegisterBuyBackParams params) async {
    return await buyBackRepository.registerBuyBack(param: params);
  }
}
