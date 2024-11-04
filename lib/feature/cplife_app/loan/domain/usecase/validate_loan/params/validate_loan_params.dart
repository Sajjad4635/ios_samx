import 'package:equatable/equatable.dart';

class ValidateLoanParams extends Equatable {
  final String policyId;

  const ValidateLoanParams({required this.policyId});

  @override
  List<Object?> get props => [policyId];
}
