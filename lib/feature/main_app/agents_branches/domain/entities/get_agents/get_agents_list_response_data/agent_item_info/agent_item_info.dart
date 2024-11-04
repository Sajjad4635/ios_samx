import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'agent_item_info.g.dart';

@JsonSerializable(createToJson: false)
class AgentItemInfo extends Equatable {

  final String unitName;
  final String branchName;
  final String regionName;
  final String unitOwner;
  final String stateName;
  final String cityName;
  final String kind;
  final String address;
  final String email;
  final String phone;
  final String fax;
  final int? index ; // doesn't received from api, added for decrease code lines in screen page

  const AgentItemInfo(
      {required this.unitName,
      required this.branchName,
      required this.regionName,
      required this.unitOwner,
      required this.stateName,
      required this.cityName,
      required this.kind,
      required this.address,
      required this.email,
      required this.phone,
      required this.fax,
        this.index,

      });

  @override
  List<Object?> get props => [
        unitName,
        branchName,
        regionName,
        unitOwner,
        stateName,
        cityName,
        kind,
        address,
        email,
        phone,
        fax
      ];

  factory AgentItemInfo.fromJson(Map<String, dynamic> json) =>
      _$AgentItemInfoFromJson(json);
}
