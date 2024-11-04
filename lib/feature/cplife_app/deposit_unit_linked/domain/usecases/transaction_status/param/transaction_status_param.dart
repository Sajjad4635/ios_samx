import 'package:equatable/equatable.dart';

class TransactionStatusParam extends Equatable {
  final String policyId;

  const TransactionStatusParam({required this.policyId});
  
  @override
  List<Object?> get props => [policyId];
}
