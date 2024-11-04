import 'package:equatable/equatable.dart';
import 'package:ios_samx/core/dio/dio_response_cp.dart';

import 'iban_inquiry_response_data/iban_inquiry_response_data.dart';

class IbanInquiryResponseEntities extends Equatable {
  final DioResponseCPLife dioResponseCPLife;

  late final IbanInquiryResponseData ibanInquiryResponseData;

  IbanInquiryResponseEntities(this.dioResponseCPLife) {
    ibanInquiryResponseData = IbanInquiryResponseData.fromJson(dioResponseCPLife.data!);
  }

  @override
  List<Object?> get props => [DioResponseCPLife, ibanInquiryResponseData];
}
