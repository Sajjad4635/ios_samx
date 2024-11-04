import 'package:ios_samx/core/dio/dio_response_unitlinked.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/domain/entities/unit_price/unit_price_response_data/unit_price_data.dart';
import 'package:equatable/equatable.dart';

class UnitPriceResponseEntity extends Equatable {
  final DioResponseUnitLinked dioResponse;
  late final UnitPriceData unitPriceData;

  UnitPriceResponseEntity({required this.dioResponse}) {
    unitPriceData = UnitPriceData.fromJson(dioResponse.data);
  }

  @override
  List<Object?> get props => [dioResponse, unitPriceData];
}
