import 'package:equatable/equatable.dart';

class SavedMoneyParam extends Equatable {
  final String policyId;

  const SavedMoneyParam({required this.policyId});
  
  @override
  List<Object?> get props => [policyId];

}
