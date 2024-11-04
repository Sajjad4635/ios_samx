import 'package:ios_samx/feature/cplife_app/loan/domain/entities/saved_money/saved_money_response_data/saved_money_response_data.dart';
import 'package:equatable/equatable.dart';
import 'package:ios_samx/core/dio/dio_response_cp.dart';

class SavedMoneyResponseEntities extends Equatable {
  final DioResponseCPLife dioResponseCPLife;
  late final SavedMoneyResponseData savedMoneyResponseData;

  SavedMoneyResponseEntities(this.dioResponseCPLife) {
    savedMoneyResponseData = SavedMoneyResponseData.fromJson(dioResponseCPLife.data!);
  }

  @override
  List<Object?> get props => [DioResponseCPLife, savedMoneyResponseData];
}
