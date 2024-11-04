import 'package:ios_samx/feature/main_app/profile/domain/entities/update_passport/update_passport_entities.dart';
import 'package:ios_samx/feature/main_app/profile/domain/entities/zipcode_update/zipcode_update_entities.dart';
import 'package:ios_samx/feature/main_app/profile/domain/usecase/update_passport/param/update_passport_param.dart';
import 'package:either_dart/either.dart';

import '../../../../../core/errors/failures/failure.dart';
import '../../../../../core/usecases/usecase.dart';
import '../entities/download_picture/download_profile_picture_entities.dart';
import '../entities/get_passport/get_passport_entities.dart';
import '../entities/get_profile/get_profile_entities.dart';
import '../entities/get_risk_score/get_risk_entities.dart';
import '../entities/get_score/get_score_entity.dart';
import '../entities/get_staff/get_staff_entities.dart';
import '../entities/upload_picture/upload_profile_picture_entities.dart';
import '../entities/zipcode_detail/zipcode_entities.dart';
import '../usecase/download_picture/param/download_profile_picture_param.dart';
import '../usecase/get_risk_score/param/get_risk_score_param.dart';
import '../usecase/get_staff/param/get_staff_param.dart';
import '../usecase/upload_picture/param/upload_profile_picture_param.dart';
import '../usecase/zipcode_detail/zipcode_detail_param/zipcode_detail_param.dart';
import '../usecase/zipcode_update/zipcode_update_param/zipcode_update_param.dart';

abstract class ProfileRepository {
  Future<Either<Failure, GetProfileEntities>> getProfile({required NoParams noParams});

  Future<Either<Failure , GetStaffEntities>> getStaff ({required GetStaffParam getStaffParam }) ;

  Future<Either<Failure, GetScoreEntity>>getScore({required NoParams noParams});

  Future<Either<Failure , GetRiskScoreEntities>> getRiskScore ({required GetRiskScoreParam getRiskScoreParam }) ;

  Future<Either<Failure, DownloadProfilePictureEntity>>downloadProfilePicture({required DownloadProfilePictureParam downloadProfilePictureParam});
  
  Future<Either<Failure, UploadProfilePictureEntity>>uploadProfilePicture({required UploadProfilePictureParams uploadProfilePictureParams});

  Future<Either<Failure, GetPassportEntities>> getPassport({required NoParams noParams});

  Future<Either<Failure, ZipcodeEntities>> postZipcode({required ZipcodeDetailParam zipcodeDetailParam});

  Future<Either<Failure, UpdatePassportEntities>> updatePassport({required UpdatePassportParam updatePassportParam});

  Future<Either<Failure, ZipcodeUpdateEntities>> updateZipcode({required ZipcodeUpdateParam zipcodeUpdateParam});

}
