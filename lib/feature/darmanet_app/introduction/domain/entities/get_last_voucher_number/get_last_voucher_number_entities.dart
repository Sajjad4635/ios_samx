import 'package:equatable/equatable.dart';

class GetLastVoucherNumberEntities extends Equatable {
  final String voucherNumber;

  const GetLastVoucherNumberEntities({required this.voucherNumber});

  @override
  List<Object?> get props => [voucherNumber];
}
