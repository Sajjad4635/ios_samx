
import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/get_all_family_for_all_contract/get_all_family_for_all_contract_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/get_all_family_for_all_contract/get_all_family_for_all_contract_entities.dart';
import '../../../domain/usecase/get_all_family_for_all_contract/param/get_all_family_for_all_contract_param.dart';

part 'get_all_family_for_all_contract_bloc.freezed.dart';
part 'get_all_family_for_all_contract_event.dart';
part 'get_all_family_for_all_contract_state.dart';

@lazySingleton
@injectable
class GetAllFamilyForAllContractBloc extends Bloc<GetAllFamilyForAllContractEvent, GetAllFamilyForAllContractState> {
  final GetAllFamilyForAllContractUsecase getAllFamilyForAllContractUsecase;
  GetAllFamilyForAllContractBloc({required this.getAllFamilyForAllContractUsecase}) : super(const GetAllFamilyForAllContractState.initial());

  @override
  Stream<GetAllFamilyForAllContractState> mapEventToState(GetAllFamilyForAllContractEvent event) async* {
    yield* event.map(getAllFamilyForAllContractCalled: (e) async* {
      try {
        yield const GetAllFamilyForAllContractState.loading();
        final failureOrSuccess = await getAllFamilyForAllContractUsecase.call(e.param);
        yield failureOrSuccess.fold(
          (failure) => GetAllFamilyForAllContractState.loadFailure(failure),
          (success) => GetAllFamilyForAllContractState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield GetAllFamilyForAllContractState.loadFailure(e);
      } 
    });
  }
}