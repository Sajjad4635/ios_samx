import 'dart:convert';
import 'dart:io';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:ios_samx/feature/main_app/profile/domain/usecase/download_picture/param/download_profile_picture_param.dart';
import 'package:ios_samx/feature/main_app/profile/domain/usecase/upload_picture/param/upload_profile_picture_param.dart';
import 'package:ios_samx/feature/main_app/profile/presentaion/bloc/download_picture/download_profile_picture_bloc.dart';
import 'package:ios_samx/feature/main_app/profile/presentaion/pages/profile_screen.dart'
    show ScoreStatus;
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:magicon/magicon.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../../../core/constant/app_style.dart';
import '../../../../../core/constant/strings.dart';
import '../../../../../injection_container.dart';
import '../bloc/upload_picture/upload_profile_picture_bloc.dart';
import 'package:image_picker/image_picker.dart';

class ProfileImageWithScore extends StatefulWidget {
  const ProfileImageWithScore(
      {super.key, this.status = ScoreStatus.none, required this.gender});

  final ScoreStatus? status;
  final int? gender;

  @override
  State<ProfileImageWithScore> createState() => _ProfileImageWithScoreState();
}

class _ProfileImageWithScoreState extends State<ProfileImageWithScore> {
  Uint8List? webImage;

  late DownloadProfilePictureBloc _downloadProfilePictureBloc;
  late UploadProfilePictureBloc _uploadProfilePictureBloc;

  late String nationalCode;
  late XFile? imageXFile ;
  late List<int>? base64;
  late File file;

  @override
  void initState() {
    final Box box = Hive.box(Strings.appDBName);

    nationalCode = box.get(Strings.nationalId);
    _downloadProfilePictureBloc = sl<DownloadProfilePictureBloc>();
    _uploadProfilePictureBloc = sl<UploadProfilePictureBloc>();

    _downloadProfilePictureBloc.add(
        DownloadProfilePictureEvent.profilePictureCalled(
            param: DownloadProfilePictureParam(nationalCode: nationalCode)));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();

    String statusText;
    Color statusColor;

    switch (widget.status) {
      case ScoreStatus.blue:
        statusText = 'main.status_blue';
        statusColor = colorTheme.primary;
        break;
      case ScoreStatus.bronze:
        statusText = 'main.status_bronze';
        statusColor = const Color(0xffBF8304);
        break;

      case ScoreStatus.silver:
        statusText = 'main.status_silver';
        statusColor = colorTheme.solidVariant;
        break;

      case ScoreStatus.gold:
        statusText = 'main.status_gold';
        statusColor = const Color(0xffFFBB2A);
        break;

      case ScoreStatus.platinum:
        statusText = 'main.status_platinum';
        statusColor = colorTheme.textVariant;
        break;
      default:
        statusText = 'main.status_unknown';
        statusColor = Colors.grey.withOpacity(1);
    }

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => _downloadProfilePictureBloc,
        ),
        BlocProvider(
          create: (context) => _uploadProfilePictureBloc,
        ),
      ],
      child: BlocListener<UploadProfilePictureBloc, UploadProfilePictureState>(
        bloc: _uploadProfilePictureBloc,
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            loadSuccess: (uploadProfileProfilePictureEntity) {
              _downloadProfilePictureBloc.add(
                  DownloadProfilePictureEvent.profilePictureCalled(
                      param: DownloadProfilePictureParam(
                          nationalCode: nationalCode)));
            },
            loadFailure: (failure) {
              showErrorWidget(context, null, failure.message!);
            },
          );
        },
        child: SizedBox(
          height: 93,
          width: 93,
          child: Stack(children: [
            Skeleton.keep(
              child: GestureDetector(
                onTap: () {
                  _showImageSourceActionSheet(context);
                },
                child: Container(
                  height: 72,
                  width: 72,
                  margin: const EdgeInsets.symmetric(horizontal: 8.5),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(color: statusColor, width: 2)),
                  child: SizedBox(
                    height: 72,
                    width: 72,
                    child: BlocBuilder<DownloadProfilePictureBloc,
                        DownloadProfilePictureState>(
                      bloc: _downloadProfilePictureBloc,
                      builder: (context, state) {
                        return state.maybeWhen(
                          orElse: () {
                            return ClipOval(
                              child: Image.asset(
                                widget.gender == 0
                                    ? "assets/images/profile_female.png"
                                    : "assets/images/profile_male.png",
                                fit: BoxFit.cover,
                              ),
                            );
                          },
                          loadFailure: (failure) {
                            //    showErrorWidget(context, null, failure.message!);
                            return ClipOval(
                              child: Image.asset(
                                widget.gender == 0
                                    ? "assets/images/profile_female.png"
                                    : "assets/images/profile_male.png",
                                fit: BoxFit.cover,
                              ),
                            );
                          },
                          loadSuccess: (profilePictureEntity) {
                            var bas64 =
                                profilePictureEntity.dioResponseSamX.data;
                            if (bas64 != null) {
                              webImage = base64Decode(bas64.toString());
                              return ClipOval(
                                  child: Image.memory(
                                    webImage!,
                                    width: 72,
                                    height: 72,
                                    fit: BoxFit.cover,
                                  ));
                            } else {
                              return ClipOval(
                                child: Image.asset(
                                  widget.gender == 0
                                      ? "assets/images/profile_female.png"
                                      : "assets/images/profile_male.png",
                                  fit: BoxFit.cover,
                                ),
                              );
                            }
                          },
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Skeleton.ignore(
                child: Container(
                  decoration: BoxDecoration(
                    color: statusColor,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  width: 93,
                  height: 29,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Magicon.medalStar, size: 16, color: colorTheme.bg),
                      const SizedBox(width: 5.5),
                      Text(
                        statusText,
                        style: TextTypography.titleSmall.copyWith(
                          color: colorTheme.bg,
                        ),
                      ).tr(),
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Future<void> _showImageSourceActionSheet(BuildContext context) async {
    final ImagePicker picker = ImagePicker();
    await showModalBottomSheet(
      context: context,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text("main.choose_from_gallery".tr(), style: AppStyle.size14Weight600,),
              leading: const Icon(Icons.photo_library),
              onTap: () async {
                if (kIsWeb) {
                  imageXFile =  await picker.pickImage(
                      source: ImageSource.gallery,
                      maxHeight: 300,
                      maxWidth: 300
                  ) ;
                  if (imageXFile != null) {
                    base64 =  await imageXFile?.readAsBytes();
                    _uploadProfilePictureBloc.add(
                        UploadProfilePictureEvent.uploadPictureEventCalled(
                            UploadProfilePictureParams(
                                file: File(''),
                                path: 'path',
                                byteFile: base64,
                                nationalCode: nationalCode)));
                    Navigator.pop(context);
                  } else {
                    showErrorWidget(context, null, "بارگزاری تصویر ناموفق");
                  }
                } else {
                  final XFile? image = await picker.pickImage(
                      source: ImageSource.gallery,
                      maxHeight: 300,
                      maxWidth: 300);
                  if (image != null) {
                    List<int> imageBytes = await image.readAsBytes();
                    _uploadProfilePictureBloc.add(
                        UploadProfilePictureEvent.uploadPictureEventCalled(
                            UploadProfilePictureParams(
                                file: File(image.path),
                                path: image.path,
                                byteFile: imageBytes,
                                nationalCode: nationalCode)));
                    Navigator.pop(context);
                  }

                  // Navigator.pop(context);
                }
              },
            ),
            ListTile(
              title: Text("main.take_photo".tr(), style: AppStyle.size14Weight600,),
              leading: const Icon(Icons.camera_alt),
              onTap: () async {
                final XFile? image = await picker.pickImage(source: ImageSource.camera, maxHeight: 300, maxWidth: 300);
                if (image != null) {
                  List<int> imageBytes = await image.readAsBytes();
                  if(kIsWeb){
                    _uploadProfilePictureBloc.add(
                        UploadProfilePictureEvent.uploadPictureEventCalled(
                            UploadProfilePictureParams(
                                file: File(''),
                                path: '',
                                byteFile: imageBytes,
                                nationalCode: nationalCode)));
                    Navigator.pop(context);
                  }else{
                    _uploadProfilePictureBloc.add(
                        UploadProfilePictureEvent.uploadPictureEventCalled(
                            UploadProfilePictureParams(
                                file: File(image.path),
                                path: image.path,
                                byteFile: imageBytes,
                                nationalCode: nationalCode)));
                    Navigator.pop(context);
                  }

                  //    Navigator.pop(context);
                }
              },
            )
          ],
        );
      },
    );
  }
// -----------------------
}
