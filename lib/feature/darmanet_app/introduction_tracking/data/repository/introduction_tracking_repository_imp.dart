import 'package:ios_samx/core/errors/exceptions/server_exception.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/errors/failures/server_failure.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/data/data_source/introduction_tracking_remote_data_source.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/entities/get_active_by_person_for_voucher/get_active_by_person_for_voucher_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/entities/get_all_family_by_main_national_code/get_family_by_main_national_code_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/entities/person_voucher_request_list/person_voucher_request_list.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/entities/send_to_next_level/send_to_next_level_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/entities/voucher_download/voucher_download_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/entities/voucher_report/voucher_report_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/entities/voucher_request_get_by_id/voucher_request_get_by_id_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/repository/introduction_tracking_repository.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/get_active_by_person_for_voucher/param/get_active_by_person_for_voucher_param.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/get_all_family_by_main_national_code/param/get_all_family_by_main_national_code_param.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/person_voucher_request_list/param/person_voucher_request_list_param.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/send_to_next_level/param/send_to_next_level_param.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/voucher_download/param/voucher_download_param.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/voucher_report/param/voucher_report_param.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/voucher_request_get_by_id/param/voucher_request_get_by_id_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IntroductionTrackingRepository)
class IntroductionTrackingRepositoryImp implements IntroductionTrackingRepository {
  final IntroductionTrackingRemoteDataSource introductionTrackingRemoteDataSource;

  IntroductionTrackingRepositoryImp({required this.introductionTrackingRemoteDataSource});

  @override
  Future<Either<Failure, GetAllFamilyByMainNationalCodeEntities>> getAllFamilyByMainNationalCode(
      {required GetAllFamilyByMainNationalCodeParam param}) async {
    try {
      final GetAllFamilyByMainNationalCodeEntities getAllFamilyByMainNationalCodeEntities =
          await introductionTrackingRemoteDataSource.getAllFamilyByMainNationalCode(param: param);
      return Right(getAllFamilyByMainNationalCodeEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, GetActiveByPersonForVoucherEntities>> getActiveByForVoucher(
      {required GetActiveByPersonForVoucherParam param}) async {
    try {
      final GetActiveByPersonForVoucherEntities getActiveByPersonForVoucherEntities =
          await introductionTrackingRemoteDataSource.getActiveByPersonForVoucher(param: param);
      return Right(getActiveByPersonForVoucherEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, PersonVoucherRequestListEntities>> personVoucherRequestList(
      {required PersonVoucherRequestListParam param}) async {
    try {
      final PersonVoucherRequestListEntities personVoucherRequestListEntities =
          await introductionTrackingRemoteDataSource.personVoucherRequestListParam(param: param);
      return Right(personVoucherRequestListEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, SendToNextLevelEntities>> sendToNextLevel({required SendToNextLevelParam param}) async {
    try {
      final SendToNextLevelEntities sendToNextLevelEntities =
          await introductionTrackingRemoteDataSource.sendToNextLevel(param: param);
      return Right(sendToNextLevelEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, VoucherRequestGetByIdEntities>> voucherRequestGetById(
      {required VoucherRequestGetByIdParam param}) async {
    try {
      final VoucherRequestGetByIdEntities voucherRequestGetByIdEntities =
          await introductionTrackingRemoteDataSource.voucherRequestGetById(param: param);
      return Right(voucherRequestGetByIdEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, VoucherDownloadEntities>> voucherDownload({required VoucherDownloadParam param}) async {
    try {
      final VoucherDownloadEntities voucherDownloadEntities =
          await introductionTrackingRemoteDataSource.voucherDownload(param: param);
      return Right(voucherDownloadEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, VoucherReportEntities>> voucherReport({required VoucherReportParam param}) async {
     try {
      final VoucherReportEntities voucherReportEntities =
          await introductionTrackingRemoteDataSource.voucherReport(param: param);
      return Right(voucherReportEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
