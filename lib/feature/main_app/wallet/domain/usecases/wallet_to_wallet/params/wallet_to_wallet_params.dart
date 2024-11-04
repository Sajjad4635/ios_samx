
import 'package:equatable/equatable.dart';


class WalletToWalletParams extends Equatable {
  final String amount;
  final String destinationMobileNumber;
  final String sourceMobileNumber;
  final String sourceWalletId;
  final String transferTypeId;
  final String note;
  final String? code;

  const WalletToWalletParams({
    required this.amount,
    required this.destinationMobileNumber,
    required this.sourceMobileNumber,
    required this.sourceWalletId,
    required this.transferTypeId,
    required this.note,
     this.code
  });


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'sourceWalletId': sourceWalletId,
      'sourceMobileNumber': sourceMobileNumber,
      'destinationMobileNumber': destinationMobileNumber,
      'amount': amount,
      'note': note,
    };

    if (code != null) {
      data['code'] = code;
    }

    return data;
  }

  @override
  List<Object?> get props => [amount, destinationMobileNumber, sourceMobileNumber, sourceWalletId, transferTypeId, note , code];
}
