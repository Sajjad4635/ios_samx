import 'package:ios_samx/feature/darmanet_app/cost_tracking/domain/entities/get_person_family_list/get_person_family_list_entities.dart';
import 'package:ios_samx/feature/darmanet_app/cost_tracking/domain/usecase/get_person_family_list/param/get_person_family_list_param.dart';

abstract class CostTrackingRemoteDataSource {
  Future<GetPersonFamilyListEntities> getPersonFamilyListEntities({required GetPersonFamilyListParam param});
}
