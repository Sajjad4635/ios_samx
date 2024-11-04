import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/domain/entities/delete_vehicle/delete_vehicle_entities.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/domain/entities/edit_vehicle/edit_vehicle_entities.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/domain/entities/post_vehicle/post_vehicle_entities.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/domain/entities/vehicle/vehicle_entities.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/domain/entities/vehicle_inquiry/vehicle_inquiry_entities.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/domain/usecase/delete_vehicle/params/delete_vehicle_param.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/domain/usecase/edit_vehicle/params/edit_vehicle_param.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/domain/usecase/post_vehicle/params/post_vehicle_param.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/domain/usecase/vehicle_inquiry/param/vehicle_inquiry_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/errors/exceptions/server_exception.dart';
import '../../../../../core/errors/failures/server_failure.dart';
import '../../domain/repository/vehicle_profile_repository.dart';
import '../data_source/vehicle_profile_remote_datasource.dart';

@LazySingleton(as: VehicleProfileRepository)
class VehicleProfileRepositoryImpl implements VehicleProfileRepository {
  VehicleProfileRemoteDataSource vehicleProfileRemoteDataSource ;

  VehicleProfileRepositoryImpl({required this.vehicleProfileRemoteDataSource}) ;

  @override
  Future<Either<Failure, VehicleEntities>> vehicleList({required NoParams noParams}) async{
    try{
      final VehicleEntities vehicleEntities = await vehicleProfileRemoteDataSource.vehicleList(noParams: noParams) ;
      return Right(vehicleEntities);
    }
    on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, DeleteVehicleEntities>> deleteVehicle({required DeleteVehicleParam deleteVehicleParam}) async{
    try{
      final DeleteVehicleEntities deleteVehicleEntities = await vehicleProfileRemoteDataSource.deleteVehicle(deleteVehicleParam: deleteVehicleParam);
      return Right(deleteVehicleEntities) ;
    }
    on ServerException {
      return Left(ServerFailure());
    }

  }

  @override
  Future<Either<Failure, PostVehicleEntities>> postVehicle({required PostVehicleParam postVehicleParam}) async{
    try{
      final PostVehicleEntities postVehicleEntities = await vehicleProfileRemoteDataSource.postVehicle(postVehicleParam: postVehicleParam);
      return Right(postVehicleEntities);
    }  on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, EditVehicleEntities>> editVehicle({required EditVehicleParam editVehicleParam}) async{
    try{
      final EditVehicleEntities editVehicleEntities = await vehicleProfileRemoteDataSource.editVehicle(editVehicleParam: editVehicleParam);
      return Right(editVehicleEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, VehicleInquiryEntities>> inquiryVehicle({required VehicleInquiryParam vehicleInquiryParam}) async {
    try{
      final VehicleInquiryEntities vehicleInquiryEntities = await vehicleProfileRemoteDataSource.inquiryVehicle(vehicleInquiryParam: vehicleInquiryParam);
      return Right(vehicleInquiryEntities) ;
    } on ServerException {
      return Left(ServerFailure());
    }
  }



}