import 'package:equatable/equatable.dart';

class ValidateBuyBackParams extends Equatable {
  final String policyId;

  const ValidateBuyBackParams({required this.policyId});

  @override
  List<Object?> get props => [policyId];
}
