// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_profile_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetProfileResponseData _$GetProfileResponseDataFromJson(
        Map<String, dynamic> json) =>
    GetProfileResponseData(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      nationalCode: json['nationalCode'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      fatherName: json['fatherName'] as String?,
      birthDate: json['birthDate'] as String?,
      birthCertificateNo: (json['birthCertificateNo'] as num?)?.toInt(),
      serialId: (json['serialId'] as num?)?.toInt(),
      birthCertificateSeries: json['birthCertificateSeries'] as String?,
      zipCode: json['zipCode'] as String?,
      zipCodeDescription: json['zipCodeDescription'] as String?,
      gender: (json['gender'] as num?)?.toInt(),
      deathStatus: (json['deathStatus'] as num?)?.toInt(),
      staffUsername: json['staffUsername'] as String?,
      address: json['address'] as String?,
    );
