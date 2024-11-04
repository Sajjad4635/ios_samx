import 'package:ios_samx/core/dio/dio_response.dart';
import 'package:equatable/equatable.dart';

class CreateUserEntities extends Equatable {
  final DioResponse dioResponse;
  const CreateUserEntities({required this.dioResponse});
  
  @override
  List<Object?> get props => [];
}
