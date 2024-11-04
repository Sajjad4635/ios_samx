import '../../domain/entity/submit_discontent.dart';
import '../../domain/usecase/params/submit_discontent_params.dart';

abstract class SubmitDiscontentRemoteDataSource {
  Future<SubmitDiscontentEntity> submitDiscontent({required SubmitDiscontentParams params}) ;

}