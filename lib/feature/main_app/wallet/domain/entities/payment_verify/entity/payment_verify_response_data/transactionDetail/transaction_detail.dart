import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'transaction_detail.g.dart';

 @JsonSerializable(createToJson: false)
class TransactionDetail extends Equatable {

  final String? rrn;
  final String? refNum;
  final String? maskedPan;
  final String? hashedPan;
  final String? terminalNumber;
  final String? orginalAmount;
  final String? affectiveAmount;
  final String? straceDate;
  final String? straceNo;

  const TransactionDetail(
      this.rrn,
      this.refNum,
      this.maskedPan,
      this.hashedPan,
      this.terminalNumber,
      this.orginalAmount,
      this.affectiveAmount,
      this.straceDate,
      this.straceNo);


  factory TransactionDetail.fromJson(Map<String, dynamic> json) => _$TransactionDetailFromJson(json);

  @override
  List<Object?> get props => [
        rrn,
        refNum,
        maskedPan,
        hashedPan,
        terminalNumber,
        orginalAmount,
        affectiveAmount,
        straceDate,
        straceNo
      ];
}
