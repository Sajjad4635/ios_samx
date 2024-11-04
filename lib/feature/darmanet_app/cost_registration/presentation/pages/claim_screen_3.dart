import 'dart:io';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/core/widgets/button_primary.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/destory/param/destroy_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/upload/param/upload_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/upload_person_cost_image/param/upload_person_cost_image_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/presentation/bloc/destroy/destroy_bloc.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/presentation/bloc/upload/upload_bloc.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/presentation/bloc/upload_person_cost_image/upload_person_cost_image_bloc.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/presentation/pages/claim_main_screen.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/presentation/widgets/dotted_container_widget.dart';
import 'package:ios_samx/injection_container.dart';
import 'package:camera/camera.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import 'package:magicon/magicon.dart';

import '../../../../../core/base_widget/app_badge/app_badge.dart';
import '../../../../../core/constant/app_style.dart';
import '../../../../../core/constant/strings.dart';
import 'package:image_picker/image_picker.dart'  ;

class ClaimScreen3 extends StatefulWidget {
  final PageController pageController;
  final String envelopID;
  final String costItemID;
  final CostIdCallback costIdCallback;
  final List<CameraDescription> cameras;

  const ClaimScreen3(
      {super.key,
        required this.pageController,
        required this.costItemID,
        required this.envelopID,
        required this.costIdCallback,
        required this.cameras});

  @override
  State<ClaimScreen3> createState() => _ClaimScreen3State();
}

class _ClaimScreen3State extends State<ClaimScreen3> {
  late UploadBloc _uploadBloc;
  late DestroyBloc _destroyBloc;
  late UploadPersonCostImageBloc _uploadPersonCostImageBloc;
  late CameraController controller;

  final ImagePicker picker = ImagePicker();
  late XFile? imageXFile ;
  late File file;
  late List<int>? byteFile;
  late Uint8List? byteFileTemp;
  late String fileName;

  List<File> imageList = [];
  List<Uint8List> imageListWeb = [];
  List<String> imageIDList = [];
  late int imgIndex;
  final Box box = Hive.box(Strings.appDBName);

  @override
  void initState() {
    _uploadBloc = sl<UploadBloc>();
    _destroyBloc = sl<DestroyBloc>();
    _uploadPersonCostImageBloc = sl<UploadPersonCostImageBloc>();
    if (widget.cameras.isNotEmpty) {
      controller = CameraController(widget.cameras[0], ResolutionPreset.max);
      controller.initialize().then((_) {
        if (!mounted) {
          return;
        }
        setState(() {});
      }).catchError((Object e) {
        if (e is CameraException) {
          switch (e.code) {
            case 'CameraAccessDenied':
            // Handle access errors here.
              break;
            default:
            // Handle other errors here.
              break;
          }
        }
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = ResponsiveLayout.getDeviceType(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => _uploadBloc,
        ),
        BlocProvider(
          create: (context) => _destroyBloc,
        ),
        BlocProvider(
          create: (context) => _uploadPersonCostImageBloc,
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<UploadBloc, UploadState>(
            bloc: _uploadBloc,
            listener: (context, state) {
              state.maybeWhen(
                loadFailure: (failure) {
                  showErrorWidget(context, failure.code, failure.message!);
                },
                loadSuccess: (uploadEntities) {
                  if (uploadEntities.uploadResponseData.succeed == false) {
                    showErrorWidget(context, 101, uploadEntities.uploadResponseData.errorMessage!);
                  } else {
                    if (kIsWeb) {
                      setState(() {
                        imageListWeb.add(byteFileTemp!);
                        imageIDList.add(uploadEntities.uploadResponseData.id);
                        showSuccessWidget(context, "darmanet.image_uploaded_successfully".tr(), () {
                          Navigator.of(context).pop();
                        });
                      });
                    } else {
                      setState(() {
                        imageList.add(file);
                        imageIDList.add(uploadEntities.uploadResponseData.id);
                        showSuccessWidget(context, "darmanet.image_uploaded_successfully".tr(), () {
                          Navigator.of(context).pop();
                        });
                      });
                    }
                  }
                },
                orElse: () {},
              );
            },
          ),
          BlocListener<DestroyBloc, DestroyState>(
            bloc: _destroyBloc,
            listener: (context, state) {
              state.maybeWhen(
                loadFailure: (failure) {
                  showErrorWidget(context, failure.code, "darmanet.delete_image_failed".tr());
                },
                loadSuccess: (destroyEntities) {
                  if (destroyEntities == true) {
                    if (kIsWeb) {
                      setState(() {
                        imageListWeb.removeAt(imgIndex);
                        imageIDList.removeAt(imgIndex);
                      });
                    } else {
                      setState(() {
                        imageList.removeAt(imgIndex);
                        imageIDList.removeAt(imgIndex);
                      });
                    }

                    showSuccessWidget(context, "darmanet.image_deleted_successfully".tr(), () {
                      Navigator.of(context).pop();
                    });
                  }
                },
                orElse: () {},
              );
            },
          ),
          BlocListener<UploadPersonCostImageBloc, UploadPersonCostImageState>(
            bloc: _uploadPersonCostImageBloc,
            listener: (context, state) {
              state.maybeWhen(
                loadFailure: (failure) {
                  showErrorWidget(context, failure.code, failure.message!);
                },
                loadSuccess: (uploadPersonCostImageEntities) {
                  if (uploadPersonCostImageEntities.succeed == false) {
                    showErrorWidget(context, 101, uploadPersonCostImageEntities.error!);
                  } else {
                    widget.costIdCallback(uploadPersonCostImageEntities.parameter.costId);
                    widget.pageController
                        .animateToPage(3, duration: const Duration(milliseconds: 1), curve: Curves.linear);
                  }
                },
                orElse: () {},
              );
            },
          ),
        ],
        child: Align(
          alignment: Alignment.topCenter,
          child: SizedBox(
            width: width * 0.9,
            height: height * 0.7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: height * 0.02,
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: Text(
                    'darmanet.upload_damage_photos'.tr(),
                    style: AppStyle.size14Weight600,
                  ),
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                Column(
                  children: [
                    kIsWeb
                        ? imageListWeb.isEmpty
                        ? const SizedBox()
                        : Container(
                      width: width * 0.9,
                      height: height * 0.15,
                      margin: const EdgeInsets.only(bottom: 10),
                      child: BlocBuilder<UploadBloc, UploadState>(
                        bloc: _uploadBloc,
                        builder: (context, state) {
                          bool loading = state is UploadStateLoading;
                          return loading
                              ? Container(
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              child: const Center(child: CircularProgressIndicator()))
                              : BlocBuilder<DestroyBloc, DestroyState>(
                            bloc: _destroyBloc,
                            builder: (context, state) {
                              return ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: imageListWeb.length,
                                  itemBuilder: (context, index) {
                                    return AppBadge(
                                      customHeight: height * 0.60,
                                      customWidth: width * 0.3,
                                      mainWidget: Image.memory(imageListWeb[index]),
                                      badgeWidget: const Icon(
                                        Magicon.deleteLeft,
                                        color: Colors.white,
                                      ),
                                      onPressBadge: () {
                                        setState(() {
                                          imgIndex = index;
                                        });
                                        _destroyBloc.add(
                                          DestroyEvent.destroyEventCalled(
                                              param: DestroyParam(ids: [imageIDList[index]])),
                                        );
                                      },
                                    );
                                  });
                            },
                          );
                        },
                      ),
                    )
                        : imageList.isEmpty
                        ? const SizedBox()
                        : Container(
                      width: width * 0.9,
                      height: height * 0.15,
                      margin: const EdgeInsets.only(bottom: 10),
                      child: BlocBuilder<UploadBloc, UploadState>(
                        bloc: _uploadBloc,
                        builder: (context, state) {
                          bool loading = state is UploadStateLoading;
                          return loading
                              ? Container(
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              child: const Center(child: CircularProgressIndicator()))
                              : BlocBuilder<DestroyBloc, DestroyState>(
                            bloc: _destroyBloc,
                            builder: (context, state) {
                              return ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: imageList.length,
                                  itemBuilder: (context, index) {
                                    return AppBadge(
                                      customHeight: height * 0.60,
                                      customWidth: width * 0.3,
                                      mainWidget: Image(
                                        width: 75,
                                        height: 75,
                                        fit: BoxFit.cover,
                                        image: FileImage(imageList[index]),
                                      ),
                                      badgeWidget: const Icon(
                                        Magicon.deleteLeft,
                                        color: Colors.white,
                                      ),
                                      onPressBadge: () {
                                        setState(() {
                                          imgIndex = index;
                                        });
                                        _destroyBloc.add(
                                          DestroyEvent.destroyEventCalled(
                                              param: DestroyParam(ids: [imageIDList[index]])),
                                        );
                                      },
                                    );
                                  });
                            },
                          );
                        },
                      ),
                    ),
                    BlocBuilder<UploadBloc, UploadState>(
                      bloc: _uploadBloc,
                      builder: (context, state) {
                        bool loading = state is UploadStateLoading;

                        return loading
                            ? Container(
                            width: width * 1,
                            height: height * 0.2,
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            child: const Center(child: CircularProgressIndicator()))
                            : GestureDetector(
                          onTap: () async {
                            if (kIsWeb) {
                              String? userAgent =
                              await DeviceInfoPlugin().webBrowserInfo.then((value) => value.userAgent);
                              if (userAgent!.contains("Windows")) {
                                showDialog(
                                  // ignore: use_build_context_synchronously
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        actions: [
                                          Container(
                                            height: 50,
                                            width: 50,
                                            alignment: Alignment.bottomCenter,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white,
                                            ),
                                            child: IconButton(
                                              icon: const Icon(Icons.add_a_photo),
                                              onPressed: () {
                                                takePicture();
                                              },
                                            ),
                                          ),
                                        ],
                                        content: Container(
                                          height: 500,
                                          width: 500,
                                          alignment: Alignment.center,
                                          child: CameraPreview(
                                            controller,
                                          ),
                                        ),
                                      );
                                    });
                              } else {
                                _showImageSourceActionSheet(context);
                              }
                            } else {
                              _showImageSourceActionSheet(context);
                            }
                          },
                          child: SizedBox(
                            width: width * 1,
                            height: height * 0.2,
                            child: DottedContainerWidget(
                              iconWidth: 40,
                              iconHeight: 40,
                              iconName: 'assets/images/add_square.png',
                              width: width * 1,
                              caption: 'darmanet.expense_registration'.tr(),
                              height: height * 0.5,
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: Text(
                    'darmanet.upload_cost_documents'.tr(),
                    style: AppStyle.size12Weight500Grey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    'darmanet.upload_cost_documents_info'.tr(),
                    style: AppStyle.size12Weight500Grey,
                  ),
                ),
                const Spacer(),
                BlocBuilder<UploadPersonCostImageBloc, UploadPersonCostImageState>(
                  bloc: _uploadPersonCostImageBloc,
                  builder: (context, state) {
                    final bool loading = state is UploadPersonCostImageStateLoading;
                    return ButtonPrimary(
                      title: "darmanet.confirm_and_continue".tr(),
                      buttonLoading: loading,
                      customWidth: width * 0.9,
                      customHeight: 48,
                      onPressed: () {
                        if (imageIDList.isNotEmpty) {
                          _uploadPersonCostImageBloc.add(
                            UploadPersonCostImageEvent.uploadPersonCostImageEventCalled(
                              param: UploadPersonCostImageParam(
                                costItemId: widget.costItemID,
                                envelopeId: widget.envelopID,
                                fileIds: imageIDList,
                              ),
                            ),
                          );
                        } else {
                          showErrorWidget(context, 100, "darmanet.upload_the_images!!!".tr());
                        }
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<XFile?> takePicture() async {
    final CameraController cameraController = controller;
    if (!cameraController.value.isInitialized) {
      return null;
    }

    if (cameraController.value.isTakingPicture) {
      // A capture is already pending, do nothing.
      return null;
    }

    try {
      final XFile file = await cameraController.takePicture();
      byteFile = await file.readAsBytes();
      byteFileTemp = await file.readAsBytes();
      Navigator.pop(context);
      controller.initialize();
      _uploadBloc.add(
        UploadEvent.uploadEventCalled(
          param: UploadParam(
            file: File(""),
            fileSize: 45,
            fileName: ".png",
            byteFile: byteFile,
          ),
        ),
      );
      return file;
    } on CameraException {
      // _showCameraException(e);
      return null;
    }
  }

//---------------
  void _showImageSourceActionSheet(BuildContext context) async{

    await showModalBottomSheet(
      context: context,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text("main.choose_from_gallery".tr() ,style: AppStyle.size14Weight600,),
              leading: const Icon(Icons.photo_library),
              onTap: () async {
                imageXFile = await picker.pickImage(
                  source: ImageSource.gallery,
                  maxWidth: 2048, maxHeight: 2048,) ;
                byteFile = await imageXFile?.readAsBytes();
                fileName = imageXFile!.name ;
                byteFileTemp =Uint8List.fromList(byteFile!);
                file = File(imageXFile!.path) ;

                _uploadBloc.add(
                  UploadEvent.uploadEventCalled(
                    param: UploadParam(
                      file: kIsWeb ? file :File(""),
                      fileSize: 45,
                      fileName: fileName,
                      byteFile: byteFile,
                    ),
                  ),
                );
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("main.take_photo".tr() ,style: AppStyle.size14Weight600,),
              leading: const Icon(Icons.camera_alt),
              onTap: () async {
                imageXFile = await picker.pickImage(
                  source: ImageSource.camera,
                  maxWidth: 2048, maxHeight: 2048,) ;
                byteFile = await imageXFile?.readAsBytes();
                fileName = imageXFile!.name ;
                byteFileTemp =Uint8List.fromList(byteFile!);
                file = File(imageXFile!.path) ;

                _uploadBloc.add(
                  UploadEvent.uploadEventCalled(
                    param: UploadParam(
                      file: kIsWeb ? file :File(""),
                      fileSize: 45,
                      fileName: fileName,
                      byteFile: byteFile,
                    ),
                  ),
                );
                Navigator.pop(context);
              },
            ),
          ],
        );
      },

    );
  }
//-------------------

}
