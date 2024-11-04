import 'package:equatable/equatable.dart';


class WalletWithDrawParams extends Equatable {
  final String sourceWalletId;

  final String sourceMobileNumber;

  final String destinationIbanNumber;

  final String note;

  final int amount;
  final String? code;

  const WalletWithDrawParams(
      {required this.sourceWalletId,
      required this.sourceMobileNumber,
      required this.destinationIbanNumber,
      required this.note,
      required this.amount,
       this.code});


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'sourceWalletId': sourceWalletId,
      'sourceMobileNumber': sourceMobileNumber,
      'destinationIbanNumber': destinationIbanNumber,
      'amount': amount,
      'note': note,
    };

    if (code != null) {
      data['code'] = code;
    }

    return data;
  }

  @override
  List<Object?> get props => [
        sourceWalletId,
        sourceMobileNumber,
        destinationIbanNumber,
        note,
        amount,
        code
      ];
}
