import 'dart:io';
import 'package:equatable/equatable.dart';


//@JsonSerializable(createFactory: false)
class UploadProfilePictureParams extends Equatable{

  final File file ;
  final String path ;
  final List<int>? byteFile;
  final String nationalCode ;
  const UploadProfilePictureParams({required this.file, required this.path, required this.byteFile , required this.nationalCode});

//  Map<String, dynamic> toJson() => _$UploadProfilePictureParamsToJson(this);

  @override
  List<Object?> get props =>  [file , path, byteFile, nationalCode];

}