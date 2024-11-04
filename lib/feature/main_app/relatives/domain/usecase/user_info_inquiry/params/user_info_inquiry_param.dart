import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_info_inquiry_param.g.dart';

@JsonSerializable(createFactory: false)
class UserInfoInquiryParam extends Equatable {
  final String nationalCode;

  const UserInfoInquiryParam({ required this.nationalCode });

  Map<String, dynamic> toJson() => _$UserInfoInquiryParamToJson(this);

  @override
  List<Object?> get props => [ nationalCode ];
}
