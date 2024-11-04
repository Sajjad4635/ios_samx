import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/entities/validate_loan/validate_loan_response.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/usecase/validate_loan/params/validate_loan_params.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/usecase/validate_loan/validate_loan_usecase.dart';


part 'validate_loan_bloc.freezed.dart';
part 'validate_loan_event.dart';
part 'validate_loan_state.dart';

@lazySingleton
@injectable
class ValidateLoanBloc extends Bloc<ValidateLoanEvent, ValidateLoanState> {
  final ValidateLoanUseCase validateLoanUseCase;
  ValidateLoanBloc({required this.validateLoanUseCase}) : super(const ValidateLoanState.initial());

  @override
  Stream<ValidateLoanState> mapEventToState(
    ValidateLoanEvent event,
  ) async* {
    yield* event.map(validateLoanEventCalled: (e) async* {
      try {
        yield const ValidateLoanState.loading();
        final failureOrSuccess = await validateLoanUseCase.call(e.params);
        yield failureOrSuccess.fold(
          (failure) => ValidateLoanState.loadFailure(failure),
          (success) => ValidateLoanState.loadSuccess(success),
        );
      } on DioFailure catch (error) {
        yield ValidateLoanState.loadFailure(error);
      }
    });
  }
}

// import 'dart:async';

// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:injectable/injectable.dart';

// import '../../../../../core/errors/failures/failure.dart';
// import '../../../domain/entities/validate_loan/validate_loan_response.dart';
// import '../../../domain/usecases/validate_loan/params/validate_loan_params.dart';
// import '../../../domain/usecases/validate_loan/validate_loan_usecase.dart';

// part 'validate_loan_bloc.freezed.dart';
// // part 'validate_loan_event.dart';
// // part 'validate_loan_state.dart';

// @lazySingleton
// @injectable
// class ValidateLoanBloc extends Bloc<ValidateLoanEvent, ValidateLoanState> {
//   final ValidateLoanUseCase validateLoanUseCase;

//   ValidateLoanBloc({required this.validateLoanUseCase}) : super( ValidateLoanStateInitial());

//   @override
//   Stream<ValidateLoanState> mapEventToState(ValidateLoanEvent event) async* {
//     yield* event.when(
//       validateLoanEventCalled: (params) async* {
//         yield  ValidateLoanStateLoading();

//         final result = await validateLoanUseCase.call(params);

//         yield result.fold(
//           (failure) => ValidateLoanStateLoadFailure(failure),
//           (success) => ValidateLoanStateLoadSuccess(success),
//         );
//       },
//     );
//   }
// }

// @freezed
// class ValidateLoanEvent with _$ValidateLoanEvent {
//   const factory ValidateLoanEvent.validateLoanEventCalled(ValidateLoanParams params) = ValidateLoanEventCalled;
// }

// class ValidateLoanState extends Equatable {
//   const ValidateLoanState();

//   @override
//   List<Object> get props => [];
// }

// class ValidateLoanStateInitial extends ValidateLoanState {}

// class ValidateLoanStateLoading extends ValidateLoanState {}

// class ValidateLoanStateLoadFailure extends ValidateLoanState {
//   final Failure failure;

//   const ValidateLoanStateLoadFailure(this.failure);

//   @override
//   List<Object> get props => [failure];
// }

// class ValidateLoanStateLoadSuccess extends ValidateLoanState {
//   final ValidateLoanResponseEntities validateLoanResponseEntities;

//   const ValidateLoanStateLoadSuccess(this.validateLoanResponseEntities);

//   @override
//   List<Object> get props => [validateLoanResponseEntities];
// }

