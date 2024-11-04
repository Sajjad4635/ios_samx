import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/entities/get_last_voucher_number/get_last_voucher_number_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/repository/introduction_repository.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetLastVoucherNumberUseCase implements UseCase<GetLastVoucherNumberEntities, NoParams> {
  final IntroductionRepository introductionRepository;
  GetLastVoucherNumberUseCase({required this.introductionRepository});

  @override
  Future<Either<Failure, GetLastVoucherNumberEntities>> call(NoParams params) async {
    return await introductionRepository.getLastVoucherNumber(noParams: params);
  }
}
