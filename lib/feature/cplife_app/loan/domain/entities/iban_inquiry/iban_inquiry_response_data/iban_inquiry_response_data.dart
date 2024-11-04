import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'iban_inquiry_response_data.g.dart';

@JsonSerializable(createToJson: false)
class IbanInquiryResponseData extends Equatable {
  final String status;
  final String accountNumber ;
  final List<String> owners;
  final String bank ;


  const IbanInquiryResponseData( {required this.status, required this.owners , required this.bank , required this.accountNumber});

  factory IbanInquiryResponseData.fromJson(Map<String, dynamic> json) => _$IbanInquiryResponseDataFromJson(json);
  
  @override
  List<Object?> get props => [status, owners , bank , accountNumber];
}
