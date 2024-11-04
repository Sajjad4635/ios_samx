import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/entities/get_active_by_person_for_voucher/get_active_by_person_for_voucher_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/repository/introduction_tracking_repository.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/get_active_by_person_for_voucher/param/get_active_by_person_for_voucher_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetActiveByPersonVoucherUseCase
    implements UseCase<GetActiveByPersonForVoucherEntities, GetActiveByPersonForVoucherParam> {
  final IntroductionTrackingRepository introductionTrackingRepository;

  GetActiveByPersonVoucherUseCase({required this.introductionTrackingRepository});

  @override
  Future<Either<Failure, GetActiveByPersonForVoucherEntities>> call(GetActiveByPersonForVoucherParam params) async {
    return await introductionTrackingRepository.getActiveByForVoucher(param: params);
  }

}
