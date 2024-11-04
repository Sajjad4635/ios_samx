import 'package:equatable/equatable.dart';

class SettlementWithdrawParam extends Equatable {
  final int policyId;

  const SettlementWithdrawParam({required this.policyId});

  @override
  List<Object?> get props => [policyId];
}
