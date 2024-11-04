import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/entities/person_voucher_create/person_voucher_create_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/repository/introduction_repository.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/usecase/person_voucher_create/param/person_voucher_create_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class PersonVoucherCreateUseCase implements UseCase<PersonVoucherCreateEntities, PersonVoucherCreateParam> {
  final IntroductionRepository introductionRepository;
  PersonVoucherCreateUseCase({required this.introductionRepository});

  @override
  Future<Either<Failure, PersonVoucherCreateEntities>> call(PersonVoucherCreateParam params) async {
    return await introductionRepository.personVoucherCreate(param: params);
  }
}
