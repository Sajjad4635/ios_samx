import 'package:ios_samx/core/dio/dio_error_darmanet.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/data/data_source/introduction_remote_data_source.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/entities/get_all_clinic/get_all_clinic_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/entities/get_cities/get_cities_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/entities/get_last_voucher_number/get_last_voucher_number_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/entities/person_voucher_create/person_voucher_create_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/usecase/get_all_clinic/param/get_all_clinic_param.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/usecase/get_cities/param/get_cities_param.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/usecase/person_voucher_create/param/person_voucher_create_param.dart';
import 'package:dio/dio.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IntroductionRemoteDataSource)
@injectable
class IntroductionRemoteDataSourceImp implements IntroductionRemoteDataSource {
  final Dio dio;

  IntroductionRemoteDataSourceImp({required this.dio});

  String baseUrl = FlavorConfig.instance.variables["darmanetURL"];

  @override
  Future<GetLastVoucherNumberEntities> getLastVoucher({required NoParams noParams}) async {
    String url = "$baseUrl/Voucher/GetLastVoucherNumber";
    try {
      final response = await dio.post(url);

      final GetLastVoucherNumberEntities getLastVoucherNumberEntities =
          GetLastVoucherNumberEntities(voucherNumber: response.data.toString());

      return getLastVoucherNumberEntities;
    } on DioError catch (e) {
      throw handleDioErrorDarmanet(e);
    }
  }

  @override
  Future<GetCitiesEntities> getCities({required GetCitiesParam param}) async {
    String url = "$baseUrl/Lookup/GetCities";
    try {
      final response = await dio.post(url, data: param.toJson());

      final GetCitiesEntities getCitiesEntities = GetCitiesEntities(response.data);

      return getCitiesEntities;
    } on DioError catch (e) {
      throw handleDioErrorDarmanet(e);
    }
  }

  @override
  Future<GetAllClinicEntities> getAllClinic({required GetAllClinicParam param}) async {
    String url = "$baseUrl/Clinic/GetAll";
    try {
      final response = await dio.post(url, data: param.toJson());

      final GetAllClinicEntities getAllClinicEntities = GetAllClinicEntities(response.data);

      return getAllClinicEntities;
    } on DioError catch (e) {
      throw handleDioErrorDarmanet(e);
    }
  }

  @override
  Future<PersonVoucherCreateEntities> personVoucherCreate({required PersonVoucherCreateParam param}) async {
    String url = "$baseUrl/VoucherRequest/PersonVoucherCreate";
    try {
      final response = await dio.post(url, data: param.toJson());

      final PersonVoucherCreateEntities personVoucherCreateEntities =
          PersonVoucherCreateEntities.fromJson(response.data);

      return personVoucherCreateEntities;
    } on DioError catch (e) {
      throw handleDioErrorDarmanet(e);
    }
  }
}
