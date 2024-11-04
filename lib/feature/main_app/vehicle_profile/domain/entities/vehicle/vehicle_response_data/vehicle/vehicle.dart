import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle.g.dart';

@JsonSerializable()
class Vehicle extends Equatable{
  final String insurer;
  final String typePolicy;
  final String beginDate;
  final String endDate;
  final String lastPolicyNumber;
  final String policyNumber;
  final String policyUniqueCode;
  @JsonKey(name: 'vehicalName')
  final String vehicleName;
  final String licensePlate;
  final String engineNumber;
  final String chassisNo;
  final String vin;
  final String productionDate;
  final String status;
  final String statusCode;
  final String policyholder;
  final String nationalCode;
  final String discountFinanceYearNumber;
  final String discountFinanceYearPercent;
  final String discountLifeYearNumber;
  final String discountLifeYearPercent;
  final String discountDriverYearNumber;
  final String discountDriverYearPercent;


  const Vehicle({
    required this.insurer,
    required this.typePolicy,
    required this.beginDate,
    required this.endDate,
    required this.lastPolicyNumber,
    required this.policyNumber,
    required this.policyUniqueCode,
    required this.vehicleName,
    required this.licensePlate,
    required this.engineNumber,
    required this.chassisNo,
    required this.vin,
    required this.productionDate,
    required this.status,
    required this.statusCode,
    required this.policyholder,
    required this.nationalCode,
    required this.discountFinanceYearNumber,
    required this.discountFinanceYearPercent,
    required this.discountLifeYearNumber,
    required this.discountLifeYearPercent,
    required this.discountDriverYearNumber,
    required this.discountDriverYearPercent,
  });

  factory Vehicle.fromJson(Map<String, dynamic> json) =>_$VehicleFromJson(json);


  @override
  List<Object?> get props => [
    insurer,
    typePolicy,
    beginDate,
    endDate,
    lastPolicyNumber,
    policyNumber,
    policyUniqueCode,
    vehicleName,
    licensePlate,
    engineNumber,
    chassisNo,
    vin,
    productionDate,
    status,
    statusCode,
    policyholder,
    nationalCode,
    discountFinanceYearNumber,
    discountFinanceYearPercent,
    discountLifeYearNumber,
    discountLifeYearPercent,
    discountDriverYearNumber,
    discountDriverYearPercent,
  ];
}