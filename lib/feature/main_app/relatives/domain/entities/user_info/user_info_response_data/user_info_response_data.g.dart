// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfoResponseData _$UserInfoResponseDataFromJson(
        Map<String, dynamic> json) =>
    UserInfoResponseData(
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
      genderKey: json['genderKey'] as String?,
      deathStatus: (json['deathStatus'] as num?)?.toInt(),
      deathStatusKey: json['deathStatusKey'] as String?,
      staffUsername: json['staffUsername'] as String?,
      address: json['address'] as String?,
    );
