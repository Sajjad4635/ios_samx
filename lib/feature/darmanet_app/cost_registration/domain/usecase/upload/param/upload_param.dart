import 'dart:io';
import 'package:equatable/equatable.dart';

class UploadParam extends Equatable {
  final File? file;
  final String? fileName;
  final List<int>? byteFile;
  final int fileSize;

  const UploadParam({required this.byteFile, required this.file, required this.fileSize, required this.fileName});

  @override
  List<Object?> get props => [file, fileSize, fileName, byteFile];
}
