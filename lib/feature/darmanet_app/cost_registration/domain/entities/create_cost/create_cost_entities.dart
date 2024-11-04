import 'package:equatable/equatable.dart';
import 'package:single_import_generator/single_import_generator.dart';

import 'create_cost_response_data/create_cost_response_data.dart';

@SingleImport()
class CreateCostEntities extends Equatable {
  final CreateCostResponseData costResponseData;

  const CreateCostEntities({required this.costResponseData});

  @override
  List<Object?> get props => [costResponseData];
}
