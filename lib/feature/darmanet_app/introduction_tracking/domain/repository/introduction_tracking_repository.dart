import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/entities/get_active_by_person_for_voucher/get_active_by_person_for_voucher_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/entities/get_all_family_by_main_national_code/get_family_by_main_national_code_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/entities/person_voucher_request_list/person_voucher_request_list.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/entities/voucher_download/voucher_download_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/entities/voucher_report/voucher_report_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/entities/voucher_request_get_by_id/voucher_request_get_by_id_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/get_active_by_person_for_voucher/param/get_active_by_person_for_voucher_param.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/get_all_family_by_main_national_code/param/get_all_family_by_main_national_code_param.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/person_voucher_request_list/param/person_voucher_request_list_param.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/voucher_download/param/voucher_download_param.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/voucher_report/param/voucher_report_param.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/usecases/voucher_request_get_by_id/param/voucher_request_get_by_id_param.dart';
import 'package:either_dart/either.dart';

import '../entities/send_to_next_level/send_to_next_level_entities.dart';
import '../usecases/send_to_next_level/param/send_to_next_level_param.dart';

abstract class IntroductionTrackingRepository {
  Future<Either<Failure, GetAllFamilyByMainNationalCodeEntities>> getAllFamilyByMainNationalCode(
      {required GetAllFamilyByMainNationalCodeParam param});

  Future<Either<Failure, GetActiveByPersonForVoucherEntities>> getActiveByForVoucher(
      {required GetActiveByPersonForVoucherParam param});

  Future<Either<Failure, PersonVoucherRequestListEntities>> personVoucherRequestList(
      {required PersonVoucherRequestListParam param});

  Future<Either<Failure, SendToNextLevelEntities>> sendToNextLevel({required SendToNextLevelParam param});

  Future<Either<Failure, VoucherRequestGetByIdEntities>> voucherRequestGetById(
      {required VoucherRequestGetByIdParam param});

  Future<Either<Failure, VoucherDownloadEntities>> voucherDownload({required VoucherDownloadParam param});

  Future<Either<Failure, VoucherReportEntities>> voucherReport({required VoucherReportParam param});
}
