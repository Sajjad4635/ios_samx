import 'package:equatable/equatable.dart';

class ValidateCashWithdrawParam extends Equatable {
  final int policyId;

  const ValidateCashWithdrawParam({required this.policyId});
  
  @override
  List<Object?> get props => [policyId];

}
