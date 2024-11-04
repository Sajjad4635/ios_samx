import 'package:ios_samx/feature/main_app/profile/domain/entities/get_risk_score/get_risk_entities.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../../../core/errors/failures/dio_failure.dart';
import '../../../../../../core/errors/failures/failure.dart';
import '../../../domain/usecase/get_risk_score/get_risk_score_usecase.dart';
import '../../../domain/usecase/get_risk_score/param/get_risk_score_param.dart';


part 'get_risk_score_bloc.freezed.dart' ;
part 'get_risk_score_event.dart';
part 'get_risk_score_state.dart';

@lazySingleton
@injectable
class GetRiskScoreBloc extends Bloc<GetRiskScoreEvent,GetRiskScoreState>{

  final GetRiskScoreUseCase getRiskScoreUseCase ;
  GetRiskScoreBloc({required this.getRiskScoreUseCase}):super(const GetRiskScoreState.initial());


  @override
  Stream<GetRiskScoreState> mapEventToState(GetRiskScoreEvent event) async* {
    yield* event.map(getRiskScoreEventCalled: (e) async* {
      try{
        yield const GetRiskScoreState.loading();
        final failureOrSuccess = await getRiskScoreUseCase.call(e.getRiskScoreParam);
        yield failureOrSuccess.fold(
              (failure) => GetRiskScoreState.loadFailure(failure),
              (success) => GetRiskScoreState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield GetRiskScoreState.loadFailure(e);
      }
    });
  }

}