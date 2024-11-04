import 'package:equatable/equatable.dart';

class VoucherDownloadParam extends Equatable {
  final String id;

  const VoucherDownloadParam({required this.id});

  @override
  List<Object?> get props => [id];
}
