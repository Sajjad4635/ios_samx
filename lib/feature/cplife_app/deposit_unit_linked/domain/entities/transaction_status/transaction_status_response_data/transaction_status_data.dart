import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';


part 'transaction_status_data.g.dart';

@JsonSerializable(createToJson: false)
class TransActionsStatusData extends Equatable {
  final double units;
  final double value;
  final double reserved;
  final double maxValueForRequest;
  final double redemption;

  const TransActionsStatusData({
    required this.units,
    required this.value,
    required this.reserved,
    required this.maxValueForRequest,
    required this.redemption,
  });

  factory TransActionsStatusData.fromJson(Map<String, dynamic> json) => _$TransActionsStatusDataFromJson(json);

  @override
  List<Object?> get props => [
        units,
        value,
        reserved,
        maxValueForRequest,
        redemption,
      ];
}
