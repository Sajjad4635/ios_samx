import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/faq/domain/entities/faq/get_faq_entity.dart';

import 'package:ios_samx/feature/main_app/faq/domain/use_case/faq/params/get_faq_param.dart';
import 'package:ios_samx/feature/main_app/faq/domain/use_case/search/params/faq_search_params.dart';
import 'package:dio/dio.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/dio/dio_error.dart';
import '../../../../../core/dio/dio_error_samx.dart';
import '../../../../../core/dio/dio_response_samx.dart';
import '../../domain/entities/category/get_category_entities.dart';
import 'faq_remote_datasource.dart';

@LazySingleton(as: FaqRemoteDataSource)
@injectable
class FaqRemoteDataSourceImpl implements FaqRemoteDataSource {
  final Dio dio;

  String baseUrl = FlavorConfig.instance.variables["samxUrl"];

  FaqRemoteDataSourceImpl({required this.dio});

  @override
  Future<GetCategoryEntities> faqCategory({required NoParams noParams}) async {
    try {
      String url = "$baseUrl/Faqs/categories";
      final response = await dio.get(url);
      final DioResponseSamX dioResponseSamX = DioResponseSamX.fromJson(response.data);
      final GetCategoryEntities entities = GetCategoryEntities(dioResponse: dioResponseSamX);

      await Future.delayed(const Duration(seconds: 2)); //

      return entities;
    } on DioException catch (ex) {
      throw handleDioError(ex);
    }
  }

  @override
  Future<FaqEntity> faqList({required FaqParam faqParam}) async {
    String url = "$baseUrl/Faqs/categories/${faqParam.categoryId}";

    try {
      final response = await dio.get(url);
      final DioResponseSamX dioResponseSamX = DioResponseSamX.fromJson(response.data);
      final FaqEntity entities = FaqEntity(dioResponseSamX: dioResponseSamX);

      await Future.delayed(const Duration(seconds: 1)); //

      return entities;
    } on DioException catch (ex) {
      throw handleDioError(ex);
    }
  }

  @override
  Future<FaqEntity> faqSearch({required FaqSearchParams faqSearchParams}) async {
    try {
      String url = "$baseUrl/Faqs/search/${faqSearchParams.queryParam}";
      final response = await dio.get(url);
      final DioResponseSamX dioResponseSamX = DioResponseSamX.fromJson(response.data);
      final FaqEntity faqEntity = FaqEntity(dioResponseSamX: dioResponseSamX);
      return faqEntity;
    } on DioException catch (ex) {
      throw handleDioErrorSamX(ex);
    }
  }
}
