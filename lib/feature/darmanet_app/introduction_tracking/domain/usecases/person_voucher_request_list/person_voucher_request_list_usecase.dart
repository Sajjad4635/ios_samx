import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/entities/person_voucher_request_list/person_voucher_request_list.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/repository/introduction_tracking_repository.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/person_voucher_request_list/param/person_voucher_request_list_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class PersonVoucherRequestListUseCase implements UseCase<PersonVoucherRequestListEntities, PersonVoucherRequestListParam> {
  final IntroductionTrackingRepository introductionTrackingRepository;

  PersonVoucherRequestListUseCase({required this.introductionTrackingRepository});

  @override
  Future<Either<Failure, PersonVoucherRequestListEntities>> call(PersonVoucherRequestListParam params) async {
    return await introductionTrackingRepository.personVoucherRequestList(param: params);
  }
}
