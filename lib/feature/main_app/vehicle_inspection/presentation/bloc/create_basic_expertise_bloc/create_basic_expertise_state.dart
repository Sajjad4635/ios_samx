part of 'create_basic_expertise_bloc.dart';

@freezed
class CreateBasicExpertiseState with _$CreateBasicExpertiseState {
  const factory CreateBasicExpertiseState.initial() = _CreateBasicExpertiseStateInitial ;
  const factory CreateBasicExpertiseState.loadFailure(Failure failure ) = _CreateBasicExpertiseStateLoadFailure;
  const factory CreateBasicExpertiseState.loading() = CreateBasicExpertiseStateLoading ;
  const factory CreateBasicExpertiseState.loadSuccess (CreateBasicExpertiseEntities createBasicExpertiseEntities) = _CreateBasicExpertiseStateLoadSuccess ;
}
