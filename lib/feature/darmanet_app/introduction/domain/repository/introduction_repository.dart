
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/entities/get_all_clinic/get_all_clinic_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/entities/get_cities/get_cities_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/entities/get_last_voucher_number/get_last_voucher_number_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/entities/person_voucher_create/person_voucher_create_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/usecase/get_all_clinic/param/get_all_clinic_param.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/usecase/get_cities/param/get_cities_param.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/usecase/person_voucher_create/param/person_voucher_create_param.dart';
import 'package:either_dart/either.dart';

abstract class IntroductionRepository {
  Future<Either<Failure, GetLastVoucherNumberEntities>> getLastVoucherNumber({required NoParams noParams});
  Future<Either<Failure, GetCitiesEntities>> getCities({required GetCitiesParam param});
  Future<Either<Failure, GetAllClinicEntities>> getAllClinic({required GetAllClinicParam param});
  Future<Either<Failure, PersonVoucherCreateEntities>> personVoucherCreate({required PersonVoucherCreateParam param});
}