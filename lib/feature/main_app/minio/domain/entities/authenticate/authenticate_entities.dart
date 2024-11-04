import 'package:equatable/equatable.dart';
import '../../../../../../core/dio/dio_response_samx.dart';
import 'authenticate_response_data/authenticate_response_data.dart';

class AuthenticateEntities extends Equatable {
  final DioResponseSamX dioResponseSamX;

  late final AuthenticateResponseData authenticateResponseData;

  AuthenticateEntities(this.dioResponseSamX) {
    authenticateResponseData =
        AuthenticateResponseData.fromJson(dioResponseSamX.data);
  }




  @override
  List<Object?> get props => [dioResponseSamX, authenticateResponseData];
}
