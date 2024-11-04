import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/cplife_app/tickets/data/data_source/tickets_remote_datasource.dart';
import 'package:ios_samx/feature/cplife_app/tickets/domain/entities/details_ticket/details_ticket_entities.dart';
import 'package:ios_samx/feature/cplife_app/tickets/domain/entities/remove_ticket/remove_ticket_entities.dart';
import 'package:ios_samx/feature/cplife_app/tickets/domain/entities/tickets/tickets_response_entities.dart';
import 'package:ios_samx/feature/cplife_app/tickets/domain/repository/tickets_repository.dart';
import 'package:ios_samx/feature/cplife_app/tickets/domain/usecase/details_tickets/param/details_ticket_param.dart';
import 'package:ios_samx/feature/cplife_app/tickets/domain/usecase/remove_ticket/param/remove_ticket_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/core/errors/exceptions/server_exception.dart';
import 'package:ios_samx/core/errors/failures/server_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';

@LazySingleton(as: TicketsRepository)
class TicketsRepositoryImpl extends TicketsRepository {
  TicketsRemoteDataSource ticketsRemoteDataSource;

  TicketsRepositoryImpl({required this.ticketsRemoteDataSource});

  @override
  Future<Either<Failure, TicketsResponseEntities>> tickets({required NoParams params}) async {
    try {
      final ticketsEntities = await ticketsRemoteDataSource.tickets(params: params);
      return Right(ticketsEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, DetailsTicketEntities>> detailsTicket({required DetailsTicketParam param}) async {
    try {
      final detailsTicket = await ticketsRemoteDataSource.detailsTicket(param: param);
      return Right(detailsTicket);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, RemoveTicketEntities>> removeTicket({required RemoveTicketParam param}) async {
    try {
      final removeTicket = await ticketsRemoteDataSource.removeTicket(param: param);
      return Right(removeTicket);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
