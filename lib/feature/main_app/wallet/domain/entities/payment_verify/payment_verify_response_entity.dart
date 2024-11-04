
import 'package:equatable/equatable.dart';
import 'package:ios_samx/core/dio/dio_response.dart';

import 'entity/payment_verify_response_data/payment_verify_response_data.dart';


class PaymentVerifyResponseEntities extends Equatable{

  final DioResponse dioResponse ;
  late final PaymentVerifyResponseData responseData ;

  PaymentVerifyResponseEntities({required this.dioResponse}){
    responseData = PaymentVerifyResponseData.fromJson(dioResponse.data!);
  }

  @override
  List<Object?> get props =>  [];

}