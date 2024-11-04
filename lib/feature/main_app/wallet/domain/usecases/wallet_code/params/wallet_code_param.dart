import 'package:equatable/equatable.dart';


class WalletCodeParams extends Equatable {
  final String nationalID;

  const WalletCodeParams({required this.nationalID});


  @override
  List<Object?> get props => [nationalID];
}