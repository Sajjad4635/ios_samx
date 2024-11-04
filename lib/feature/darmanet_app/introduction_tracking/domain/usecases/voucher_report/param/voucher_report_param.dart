import 'package:equatable/equatable.dart';

class VoucherReportParam extends Equatable {
  final String id;

  const VoucherReportParam({required this.id});

  @override
  List<Object?> get props => [id];
}
