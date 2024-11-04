import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/check_repetitive/check_repetitive_entities.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/create_cost/create_cost_entities.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/file_list/file_list_entities.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/get_active_by_person/get_active_by_person_entities.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/get_all_cost_desc/get_all_cost_desc_entities.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/get_all_family_for_all_contract/get_all_family_for_all_contract_entities.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/get_by_id/get_by_id_entities.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/get_envelope_send_info/get_envelope_send_info_entities.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/send_envelope/send_envelope_entities.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/upload/upload_entities.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/upload_person_cost_image/upload_person_cost_image_entities.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/check_repetitive/param/check_repetitive_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/create_cost/param/create_cost_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/destory/param/destroy_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/file_list/param/file_list_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/get_active_by_person/param/get_active_by_person_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/get_all_cost_desc/param/get_all_cost_desc_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/get_all_family_for_all_contract/param/get_all_family_for_all_contract_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/get_by_id/param/get_by_id_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/get_envelope_send_info/param/get_envelope_send_info_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/send_envelope/param/send_envelope_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/upload/param/upload_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/upload_person_cost_image/param/upload_person_cost_image_param.dart';


abstract class CostRegistrationRemoteDataSource {
  Future<GetActiveByPersonEntities> getActiveByPerson({required GetActiveByPersonParam param});
  Future<GetAllFamilyForAllContractEntities> getAllFamilyForAllContract(
      {required GetAllFamilyForAllContractParam param});
  Future<UploadEntities> uploadDocument({required UploadParam param});
  Future<CheckRepetitiveEntities> checkRepetitive({required CheckRepetitiveParam param});
  Future<CreateCostEntities> createCost({required CreateCostParam param});
  Future<UploadPersonCostImageEntities> uploadPersonCostImage({required UploadPersonCostImageParam param});
  Future<SendEnvelopeEntities> sendEnvelope({required SendEnvelopeParam sendEnvelopeParam});
  Future<GetEnvelopeSendInfoEntities> getEnvelopeSendInfo({required GetEnvelopeSendInfoParam param});
  Future<FileListEntities> fileList({required FileListParam param});
  Future<GetAllCostDescEntities> getAllCostDesc({required GetAllCostDescParam param});
  Future<GetByIdEntities> getById({required GetByIdParam param});
  Future<bool> destroy({required DestroyParam param});
}