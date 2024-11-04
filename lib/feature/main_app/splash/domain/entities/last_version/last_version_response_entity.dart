import 'package:ios_samx/core/dio/dio_response_samx.dart';
import 'package:ios_samx/feature/main_app/splash/domain/entities/last_version/last_version_response_data/version_response_data.dart';
import 'package:equatable/equatable.dart';

class LastVersionResponseEntity extends Equatable {
  final DioResponseSamX dioResponse;
  late final VersionResponseData versionResponseData;

  LastVersionResponseEntity({required this.dioResponse}) {
    versionResponseData = VersionResponseData.fromJson(dioResponse.data);
  }

  @override
  List<Object?> get props => [versionResponseData, dioResponse];
}
