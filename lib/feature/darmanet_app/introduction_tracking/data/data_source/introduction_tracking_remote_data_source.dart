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

import '../../domain/entities/send_to_next_level/send_to_next_level_entities.dart';
import '../../domain/usecases/send_to_next_level/param/send_to_next_level_param.dart';

abstract class IntroductionTrackingRemoteDataSource {
  Future<GetAllFamilyByMainNationalCodeEntities> getAllFamilyByMainNationalCode(
      {required GetAllFamilyByMainNationalCodeParam param});

  Future<GetActiveByPersonForVoucherEntities> getActiveByPersonForVoucher(
      {required GetActiveByPersonForVoucherParam param});

  Future<PersonVoucherRequestListEntities> personVoucherRequestListParam(
      {required PersonVoucherRequestListParam param});

  Future<SendToNextLevelEntities> sendToNextLevel({required SendToNextLevelParam param});

  Future<VoucherRequestGetByIdEntities> voucherRequestGetById({required VoucherRequestGetByIdParam param});

  Future<VoucherDownloadEntities> voucherDownload({
    required VoucherDownloadParam param,
  });

  Future<VoucherReportEntities> voucherReport({required VoucherReportParam param});
}
