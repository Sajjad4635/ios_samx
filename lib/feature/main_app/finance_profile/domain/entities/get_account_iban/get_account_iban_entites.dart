

import 'package:ios_samx/feature/main_app/finance_profile/domain/entities/get_account_iban/get_account_iban_response_data/get_account_iban_response_data.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/dio/dio_response_cp.dart';


@JsonSerializable(createToJson: false)

class GetAccountIbanEntities extends Equatable {
  final DioResponseCPLife dioResponseCPLife;
  late final GetAccountIbanResponseData getAccountIbanResponseData;

  GetAccountIbanEntities(this.dioResponseCPLife) {
    getAccountIbanResponseData = GetAccountIbanResponseData.fromJson(dioResponseCPLife.data!);
  }

  @override
  List<Object?> get props => [DioResponseCPLife , getAccountIbanResponseData];
}


