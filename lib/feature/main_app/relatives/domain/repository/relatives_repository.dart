import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/entities/delete_relative/delete_relative_entities.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/entities/edit_relative/edit_relative_entities.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/entities/register_wihout_otp/register_without_otp_entities.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/entities/relative/get_relative_entities.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/delete_relative/params/delete_relative_param.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/edit_relative/params/edit_relative_param.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/get_relative_list/params/get_relatives_params.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/entities/add_relative/add_relative_entities.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/entities/relatives_list/relatives_list_entities.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/entities/user_info/user_info_entities.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/add_relative/params/add_relative_param.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/register_without_otp/params/register_under_18_params.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/register_without_otp/params/register_upper_18_params.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/user_info_inquiry/params/user_info_inquiry_param.dart';
import 'package:either_dart/either.dart';

abstract class RelativesRepository {
  Future<Either<Failure, RelativeListEntities>> getRelativesTypeList(
      {required NoParams noParams});

  Future<Either<Failure, UserInfoEntities>> userInfoInquiry(
      {required UserInfoInquiryParam userInfoInquiryParam});

  Future<Either<Failure, AddRelativeEntities>> addRelative(
      {required AddRelativeParam addRelativeParam});

  Future<Either<Failure, GetRelativeEntities>> getRelatives(
      {required GetRelativesParams getRelativesParams});

  Future<Either<Failure, DeleteRelativeEntities>> deleteRelative(
      {required DeleteRelativeParam deleteRelativeParam});

  Future<Either<Failure, EditRelativeEntities>> editRelative(
      {required EditRelativeParam editRelativeParam});

  Future<Either<Failure, RegisterWithoutOtpEntities>> registerUserUnder18(
      {required RegisterUnder18Params registerUnder18Params});

  Future<Either<Failure, RegisterWithoutOtpEntities>> registerUserUpper18(
      {required RegisterUpper18Params registerUpper18Params});
}
