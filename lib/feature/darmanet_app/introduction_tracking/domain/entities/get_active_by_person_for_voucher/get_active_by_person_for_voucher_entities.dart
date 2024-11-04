import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/entities/get_active_by_person_for_voucher/get_active_by_person_for_voucher_response_data/get_active_by_person_for_voucher_response_data.dart';
import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class GetActiveByPersonForVoucherEntities extends Equatable {
  late List data;
  final List<GetActiveByPersonForVoucherResponseData> getActiveByPersonForVoucherResponseData = [];

  GetActiveByPersonForVoucherEntities(this.data) {
    for (var element in data) {
      getActiveByPersonForVoucherResponseData.add(GetActiveByPersonForVoucherResponseData.fromJson(element));
    }
  }

  @override
  List<Object?> get props => [data];
}