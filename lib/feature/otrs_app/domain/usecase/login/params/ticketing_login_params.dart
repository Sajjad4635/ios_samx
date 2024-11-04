// ignore_for_file: non_constant_identifier_names

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart'; 

part 'ticketing_login_params.g.dart';

@JsonSerializable(createFactory:  false)
class TicketingLoginParams extends Equatable {

  final String CustomerUserLogin;
  final String Password ;

  const TicketingLoginParams({
    required this.CustomerUserLogin ,
    required this.Password 
  });

  Map<String, dynamic> toJson() => _$TicketingLoginParamsToJson(this);

  @override
  List<Object?> get props => [
    CustomerUserLogin ,
    Password 
    ];

}