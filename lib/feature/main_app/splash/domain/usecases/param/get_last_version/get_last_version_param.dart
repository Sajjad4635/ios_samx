import 'package:equatable/equatable.dart';

class GetLastVersionParam extends Equatable {
  final String version;

  const GetLastVersionParam({required this.version});
  @override
  List<Object?> get props => [version];
}
