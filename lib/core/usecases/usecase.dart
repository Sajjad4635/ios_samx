import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';

import '../errors/failures/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}

class Headers extends Equatable {
  final Map<String, dynamic> headers;

  const Headers({required this.headers});

  @override
  List<Object?> get props => [headers];
}
