import 'package:ios_samx/core/dio/dio_response_samx.dart';
import 'package:ios_samx/feature/main_app/sso/domain/entities/get_profile_activation/records/data_record.dart';
import 'package:equatable/equatable.dart';

class GetProfileActivationEntities extends Equatable {
  final DioResponseSamX dioResponseCPLife;
  late final DataRecords dataRecords;

   GetProfileActivationEntities(this.dioResponseCPLife) {
    dataRecords = DataRecords.fromJson(dioResponseCPLife.data);
  }

  @override
  List<Object?> get props => [dataRecords];
}
