import 'package:ios_samx/feature/cplife_app/buy_back/domain/entities/validate_buy_backs/validate_buy_backs_response.dart';
import 'package:ios_samx/feature/cplife_app/buy_back/domain/repository/buy_back_repository.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/cplife_app/buy_back/domain/usecase/validate_buy_back/params/validate_buy_back_params.dart';

@injectable
class ValidateBuyBackUseCase extends UseCase<ValidateBuyBacksResponseEntities, ValidateBuyBackParams> {
  final BuyBackRepository buyBackRepository;

  ValidateBuyBackUseCase({required this.buyBackRepository});

  @override
  Future<Either<Failure, ValidateBuyBacksResponseEntities>> call(ValidateBuyBackParams params) async {
    return await buyBackRepository.validateBuyBack(param: params);
  }
}
