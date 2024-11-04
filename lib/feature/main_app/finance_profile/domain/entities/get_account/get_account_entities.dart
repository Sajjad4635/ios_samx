import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/dio/dio_response_cp.dart';
import 'get_account_response_data/get_account_response_data.dart';

@JsonSerializable(createToJson: false)
class GetAccountEntities extends Equatable {
  final DioResponseCPLife dioResponseCPLife;
  late final List<GetAccountResponseData> getAccountResponseData = [] ;

  GetAccountEntities(this.dioResponseCPLife) {
    for (var element in dioResponseCPLife.data) {
      getAccountResponseData.add(GetAccountResponseData.fromJson(element));
    }
  }

  @override
  List<Object?> get props => [dioResponseCPLife, getAccountResponseData];
}
