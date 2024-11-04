import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/entities/voucher_download/voucher_download_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/repository/introduction_tracking_repository.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/voucher_download/param/voucher_download_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class VoucherDownloadUseCase implements UseCase<VoucherDownloadEntities, VoucherDownloadParam> {
  final IntroductionTrackingRepository introductionRepository;

  const VoucherDownloadUseCase({required this.introductionRepository});

  @override
  Future<Either<Failure, VoucherDownloadEntities>> call(VoucherDownloadParam params) async {
    return await introductionRepository.voucherDownload(param: params);
  }
}
