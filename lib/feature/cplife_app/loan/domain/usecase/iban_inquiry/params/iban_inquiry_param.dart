import 'package:equatable/equatable.dart';

class IbanInquiryParam extends Equatable {
  final String ibanNumber;

  const IbanInquiryParam({required this.ibanNumber});
  
  @override
  List<Object?> get props => [ibanNumber];
}
