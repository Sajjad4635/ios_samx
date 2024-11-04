import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/profile/domain/entities/get_passport/get_passport_entities.dart';
import 'package:ios_samx/feature/main_app/profile/domain/entities/get_risk_score/get_risk_entities.dart';
import 'package:ios_samx/feature/main_app/profile/domain/entities/get_score/get_score_entity.dart';
import 'package:ios_samx/feature/main_app/profile/domain/entities/update_passport/update_passport_entities.dart';
import 'package:ios_samx/feature/main_app/profile/domain/entities/zipcode_update/zipcode_update_entities.dart';
import 'package:ios_samx/feature/main_app/profile/domain/usecase/get_risk_score/param/get_risk_score_param.dart';
import 'package:ios_samx/feature/main_app/profile/domain/usecase/update_passport/param/update_passport_param.dart';
import 'package:ios_samx/feature/main_app/profile/domain/usecase/zipcode_update/zipcode_update_param/zipcode_update_param.dart';

import '../../domain/entities/download_picture/download_profile_picture_entities.dart';
import '../../domain/entities/get_profile/get_profile_entities.dart';
import '../../domain/entities/get_staff/get_staff_entities.dart';
import '../../domain/entities/upload_picture/upload_profile_picture_entities.dart';
import '../../domain/entities/zipcode_detail/zipcode_entities.dart';
import '../../domain/usecase/download_picture/param/download_profile_picture_param.dart';
import '../../domain/usecase/get_staff/param/get_staff_param.dart';
import '../../domain/usecase/upload_picture/param/upload_profile_picture_param.dart';
import '../../domain/usecase/zipcode_detail/zipcode_detail_param/zipcode_detail_param.dart';

abstract class ProfileRemoteDataSource {
  Future<GetProfileEntities> getProfile({required NoParams noParams});
  Future<GetStaffEntities> getStaff ({required GetStaffParam getStaffParam}) ;
  Future<GetScoreEntity> getScore({required NoParams noParams});
  Future<GetRiskScoreEntities> getRiskScore ({required GetRiskScoreParam getRiskScoreParam}) ;
  Future<DownloadProfilePictureEntity> downloadProfilePicture ({required DownloadProfilePictureParam downloadProfilePictureParam}) ;
  Future<UploadProfilePictureEntity> uploadProfilePicture ({required UploadProfilePictureParams param}) ;
  Future<GetPassportEntities> getPassport ({required NoParams noParams}) ;
  Future<ZipcodeEntities> zipcodeDetail ({required ZipcodeDetailParam zipcodeDetailParam}) ;
  Future<UpdatePassportEntities> updatePassport ({required UpdatePassportParam updatePassportParam}) ;
  Future<ZipcodeUpdateEntities> updateZipcode ({required ZipcodeUpdateParam zipcodeUpdateParam}) ;
}
