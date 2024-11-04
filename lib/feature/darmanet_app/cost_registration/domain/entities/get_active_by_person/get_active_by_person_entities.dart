import 'package:equatable/equatable.dart';

import 'get_active_by_person_response_data/get_active_by_person_response_data.dart';

// ignore: must_be_immutable
class GetActiveByPersonEntities extends Equatable {
  late List data;
  final List<GetActiveByPersonResponseData> getActiveByPersonResponseData = [];

  GetActiveByPersonEntities(this.data) {
    for (var element in data) {
      getActiveByPersonResponseData.add(GetActiveByPersonResponseData.fromJson(element));
    }
  }

  @override
  List<Object?> get props => [data];
}
