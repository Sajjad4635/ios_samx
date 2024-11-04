import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/entities/voucher_report/voucher_report_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/repository/introduction_tracking_repository.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/voucher_report/param/voucher_report_param.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class VoucherReportUseCase implements UseCase<VoucherReportEntities, VoucherReportParam> {
  final IntroductionTrackingRepository introductionRepository;

  const VoucherReportUseCase({required this.introductionRepository});

  @override
  Future<Either<Failure, VoucherReportEntities>> call(VoucherReportParam params) async {
    return await introductionRepository.voucherReport(param: params);
  }
}