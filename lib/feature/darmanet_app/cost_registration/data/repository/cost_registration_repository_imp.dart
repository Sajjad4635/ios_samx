import 'package:ios_samx/core/errors/exceptions/server_exception.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/errors/failures/server_failure.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/data/data_source/cost_registration_remote_data_source.dart';
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
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/repository/cost_registration_repository.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/check_repetitive/param/check_repetitive_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/create_cost/param/create_cost_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/file_list/param/file_list_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/get_active_by_person/param/get_active_by_person_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/get_all_cost_desc/param/get_all_cost_desc_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/get_all_family_for_all_contract/param/get_all_family_for_all_contract_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/get_by_id/param/get_by_id_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/get_envelope_send_info/param/get_envelope_send_info_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/send_envelope/param/send_envelope_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/upload/param/upload_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/upload_person_cost_image/param/upload_person_cost_image_param.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

import '../../domain/usecase/destory/param/destroy_param.dart';

@LazySingleton(as: CostRegistrationRepository)
class CostRegistrationRepositoryImp implements CostRegistrationRepository {
  final CostRegistrationRemoteDataSource costRegistrationRemoteDataSource;

  CostRegistrationRepositoryImp(
      {required this.costRegistrationRemoteDataSource});

  @override
  Future<Either<Failure, GetActiveByPersonEntities>> getActiveByPerson( 
      {required GetActiveByPersonParam param}) async {
    try {
      final GetActiveByPersonEntities getActiveByPersonEntities =
          await costRegistrationRemoteDataSource.getActiveByPerson(
              param: param);
      return Right(getActiveByPersonEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, GetAllFamilyForAllContractEntities>>
      getAllFamilyForAllContract(
          {required GetAllFamilyForAllContractParam param}) async {
    try {
      final GetAllFamilyForAllContractEntities
          getAllFamilyForAllContractEntities =
          await costRegistrationRemoteDataSource.getAllFamilyForAllContract(
              param: param);
      return Right(getAllFamilyForAllContractEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, UploadEntities>> uploadDocument(
      {required UploadParam param}) async {
    try {
      final UploadEntities uploadEntities =
          await costRegistrationRemoteDataSource.uploadDocument(param: param);
      return Right(uploadEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, CheckRepetitiveEntities>> checkRepetitive(
      {required CheckRepetitiveParam param}) async {
    try {
      final CheckRepetitiveEntities checkRepetitiveEntities =
          await costRegistrationRemoteDataSource.checkRepetitive(param: param);
      return Right(checkRepetitiveEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, CreateCostEntities>> createCost(
      {required CreateCostParam param}) async {
    try {
      final CreateCostEntities createCostEntities =
          await costRegistrationRemoteDataSource.createCost(param: param);
      return Right(createCostEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, UploadPersonCostImageEntities>> uploadPersonCostImage(
      {required UploadPersonCostImageParam param}) async {
    try {
      final UploadPersonCostImageEntities uploadPersonCostImageEntities =
          await costRegistrationRemoteDataSource.uploadPersonCostImage(
              param: param);
      return Right(uploadPersonCostImageEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, SendEnvelopeEntities>> sendEnvelope(
      {required SendEnvelopeParam param}) async {
    try {
      final SendEnvelopeEntities sendEnvelopeEntities =
          await costRegistrationRemoteDataSource.sendEnvelope(
              sendEnvelopeParam: param);
      return Right(sendEnvelopeEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, GetEnvelopeSendInfoEntities>> getSendEnvelopeInfo(
      {required GetEnvelopeSendInfoParam param}) async {
    try {
      final GetEnvelopeSendInfoEntities getEnvelopeSendInfoEntities =
          await costRegistrationRemoteDataSource.getEnvelopeSendInfo(
              param: param);
      return Right(getEnvelopeSendInfoEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, FileListEntities>> fileList(
      {required FileListParam param}) async {
    try {
      final FileListEntities fileListEntities =
          await costRegistrationRemoteDataSource.fileList(param: param);
      return Right(fileListEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, GetAllCostDescEntities>> getAllCostDesc(
      {required GetAllCostDescParam param}) async {
    try {
      final GetAllCostDescEntities getAllCostDescEntities =
          await costRegistrationRemoteDataSource.getAllCostDesc(param: param);
      return Right(getAllCostDescEntities);
    }on ServerException {
      return Left(ServerFailure());
    }
      }
  @override
  Future<Either<Failure, bool>> destroy({required DestroyParam param}) async {
    try {
      final bool destroyEntities =
          await costRegistrationRemoteDataSource.destroy(param: param);

      return Right(destroyEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
  
  @override
  Future<Either<Failure, GetByIdEntities>> getById(
      {required GetByIdParam param}) async {
    try {
      final GetByIdEntities getByIdEntities =
          await costRegistrationRemoteDataSource.getById(param: param);
      return Right(getByIdEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}

