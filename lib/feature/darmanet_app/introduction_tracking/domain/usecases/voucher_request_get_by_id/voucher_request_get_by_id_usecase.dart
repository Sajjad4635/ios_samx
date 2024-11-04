import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/entities/voucher_request_get_by_id/voucher_request_get_by_id_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/repository/introduction_tracking_repository.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/voucher_request_get_by_id/param/voucher_request_get_by_id_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class VoucherRequestGetByIdUseCase implements UseCase<VoucherRequestGetByIdEntities, VoucherRequestGetByIdParam> {
  final IntroductionTrackingRepository introductionTrackingRepository;

  const VoucherRequestGetByIdUseCase({required this.introductionTrackingRepository});

  @override
  Future<Either<Failure, VoucherRequestGetByIdEntities>> call(VoucherRequestGetByIdParam params) async {
    return await introductionTrackingRepository.voucherRequestGetById(param: params);
  }
}
