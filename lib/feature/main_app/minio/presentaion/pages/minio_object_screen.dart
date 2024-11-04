import 'dart:io';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/extensions/convert_date.dart';
import 'package:ios_samx/core/utils/download_blob_file.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:ios_samx/core/widgets/ball_beat_progress_indicator.dart';
import 'package:ios_samx/feature/main_app/minio/domain/entities/get_object_list/get_object_list_response_data/get_object_list_response_data.dart';
import 'package:ios_samx/feature/main_app/minio/domain/usecase/get_object_list/param/get_object_list_param.dart';
import 'package:ios_samx/feature/main_app/minio/domain/usecase/object_remove/param/object_remove_param.dart';
import 'package:ios_samx/feature/main_app/minio/domain/usecase/object_upload/param/object_upload_param.dart';
import 'package:ios_samx/injection_container.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magicon/magicon.dart';
import 'package:path_provider/path_provider.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:ios_samx/core/base_widget/index.dart'
    show AppButton, ButtonType, AppTopAppBar, AppSnackBar, AppErrorButton, SnackBarType, ButtonErrorType;

import '../../../../../core/responsive/responsive_layout.dart';
import '../../domain/usecase/object_download/param/object_download_param.dart';
import '../bloc/get_object_list/get_object_list_bloc.dart';
import '../bloc/object_download/object_download_bloc.dart';
import '../bloc/object_remove/object_remove_bloc.dart';
import '../bloc/object_upload/object_upload_bloc.dart';

class MinioObjectScreen extends StatefulWidget {
  final String accessKeyId;
  final String secretAccessKey;
  final String sessionToken;
  final String bucketName;

  const MinioObjectScreen({
    super.key,
    required this.accessKeyId,
    required this.secretAccessKey,
    required this.sessionToken,
    required this.bucketName,
  });

  @override
  State<MinioObjectScreen> createState() => _MinioObjectScreenState();
}

class _MinioObjectScreenState extends State<MinioObjectScreen> {
  late GetObjectListBloc _getObjectListBloc;
  late ObjectDownloadBloc _objectDownloadBloc;
  late ObjectRemoveBloc _objectRemoveBloc;
  late ObjectUploadBloc _objectUploadBloc;

  late List<GetObjectListResponseData> objects = [];

  late File file;
  String fileName = "";
  List<String> fileNameList = [];

  @override
  void initState() {
    _getObjectListBloc = sl<GetObjectListBloc>();
    _objectDownloadBloc = sl<ObjectDownloadBloc>();
    _objectRemoveBloc = sl<ObjectRemoveBloc>();
    _objectUploadBloc = sl<ObjectUploadBloc>();
    _getObjectListBloc.add(
      GetObjectListEvent.getObjectListEventCalled(
        GetObjectListParam(
          accessKeyId: widget.accessKeyId,
          sessionToken: widget.sessionToken,
          secretAccessKey: widget.secretAccessKey,
          bucketName: widget.bucketName,
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = ResponsiveLayout.getDeviceType(context);
    final height = MediaQuery.of(context).size.height;
    final colorTheme = context.colorTheme<CustomTheme>();

    return SafeArea(
      child: Scaffold(
        backgroundColor: colorTheme.bg,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(64.0),
          child: AppTopAppBar(
            title: 'main.my_document'.tr(),
            isQrCode: false,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => _getObjectListBloc,
            ),
            BlocProvider(
              create: (context) => _objectDownloadBloc,
            ),
            BlocProvider(
              create: (context) => _objectRemoveBloc,
            ),
            BlocProvider(
              create: (context) => _objectUploadBloc,
            ),
          ],
          child: MultiBlocListener(
            listeners: [
              BlocListener<GetObjectListBloc, GetObjectListState>(
                bloc: _getObjectListBloc,
                listener: (context, state) {
                  state.maybeWhen(
                    loadFailure: (error) {
                      showErrorWidget(context, error.code!, error.message!);
                    },
                    loadSuccess: (getObjectListEntities) {
                      setState(() {
                        objects = getObjectListEntities.objects;
                      });
                    },
                    orElse: () {},
                  );
                },
              ),
              BlocListener<ObjectRemoveBloc, ObjectRemoveState>(
                bloc: _objectRemoveBloc,
                listener: (context, state) {
                  state.maybeWhen(
                    loadFailure: (error) {
                      Navigator.of(context).pop();
                      AppSnackBar.showSnackBar(
                        context: context,
                        title: 'main.remove'.tr(),
                        message: error.message!,
                        type: SnackBarType.error,
                      );
                    },
                    loadSuccess: (objectRemoveEntities) {
                      Navigator.of(context).pop();
                      AppSnackBar.showSnackBar(
                        context: context,
                        title: 'main.remove'.tr(),
                        message: "فایل مورد نظر با موفقیت حذف گردید",
                        type: SnackBarType.success
                      );
                      _getObjectListBloc.add(
                        GetObjectListEvent.getObjectListEventCalled(
                          GetObjectListParam(
                            accessKeyId: widget.accessKeyId,
                            sessionToken: widget.sessionToken,
                            secretAccessKey: widget.secretAccessKey,
                            bucketName: widget.bucketName,
                          ),
                        ),
                      );
                    },
                    orElse: () {},
                  );
                },
              ),
              BlocListener<ObjectDownloadBloc, ObjectDownloadBlocState>(
                  bloc: _objectDownloadBloc,
                  listener: (context, state) {
                    state.maybeWhen(
                      loadFailure: (error) {
                        showErrorWidget(context, error.code!, error.message!);
                      },
                      loadSuccess: (objectDownloadEntities) async {
                        Navigator.of(context).pop();
                        AppSnackBar.showSnackBar(
                          context: context,
                          title: 'main.download'.tr(),
                          message: 'main.downloaded_successfully'.tr(),
                        );

                        try {
                          if (kIsWeb) {
                            // downloadBlobFile(
                            //     objectDownloadEntities.dioResponseSamX.data, objectDownloadEntities.contentDisposition);
                          } else {
                            Directory? downloadsDirectory = await getDownloadsDirectory();
                            String filePath =
                                '${downloadsDirectory!.path}/${objectDownloadEntities.contentDisposition}';
                            File file = File(filePath);
                            await file.writeAsBytes(objectDownloadEntities.dioResponseSamX.data as List<int>);
                          }
                        } catch (e) {}
                      },
                      orElse: () {},
                    );
                  }),
              BlocListener<ObjectUploadBloc, ObjectUploadState>(
                bloc: _objectUploadBloc,
                listener: (context, state) {
                  state.maybeWhen(
                    loadFailure: (error) {
                      showErrorWidget(context, error.code!, error.message!);
                    },
                    loadSuccess: (objectUploadEntities) {
                      setState(() {
                        _getObjectListBloc.add(GetObjectListEvent.getObjectListEventCalled(GetObjectListParam(
                            accessKeyId: widget.accessKeyId,
                            sessionToken: widget.sessionToken,
                            secretAccessKey: widget.secretAccessKey,
                            bucketName: widget.bucketName)));
                      });
                    },
                    orElse: () {},
                  );
                },
              ),
            ],
            child: BlocBuilder<GetObjectListBloc, GetObjectListState>(
              bloc: _getObjectListBloc,
              builder: (context, state) {
                final loading = state is GetObjectListStateLoading;
                return loading
                    ? const Center(child: SizedBox(height: 40, width: 40, child: CircularProgressIndicator()))
                    : Center(
                        child: SizedBox(
                            width: width,
                            height: height * 0.9,
                            child: objects.isEmpty
                                ? Center(
                                    child: SizedBox(
                                      height: height * 0.5,
                                      width: width * 0.9,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset(width: width * 0.4, "assets/images/null.png"),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            'main.no_file_show'.tr(),
                                            style: TextTypography.labelMedium.copyWith(
                                              color: colorTheme.textVariant,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 8.0),
                                            child: Text(
                                              'main.use_upload'.tr(),
                                              style: TextTypography.labelMedium.copyWith(
                                                color: colorTheme.textVariant,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                : CustomScrollView(
                                    physics: const BouncingScrollPhysics(),
                                    slivers: [
                                      SliverList.separated(
                                        itemCount: objects.length,
                                        itemBuilder: (BuildContext context, int index) {
                                          return ListTile(
                                            title: Text(
                                              objects[index].key.toString(),
                                              style: TextTypography.titleSmall.copyWith(color: colorTheme.text),
                                            ),
                                            subtitle: Padding(
                                              padding: const EdgeInsets.only(
                                                top: 8.0,
                                              ),
                                              child: Text(objects[index].lastModifiedDateTime == null ||
                                                      objects[index].lastModified == null
                                                  ? ""
                                                  : "${ConvertDate().convertGregorianTimeToJalali(objects[index].lastModifiedDateTime.toString())} | ${ConvertDate().convertGregorianToJalali(objects[index].lastModified.toString())}"),
                                            ),
                                            subtitleTextStyle: TextTypography.labelSmall,
                                            onTap: () {},
                                            leading: Padding(
                                              padding: const EdgeInsets.only(left: 8.0),
                                              child: Image.asset("assets/images/minio.png"),
                                            ),
                                            trailing: Padding(
                                              padding: const EdgeInsets.only(right: 8.0, top: 12.0),
                                              child: IconButton(
                                                icon: const Icon(
                                                  Icons.more_horiz,
                                                ),
                                                onPressed: () {
                                                  showModalBottomSheet(
                                                      context: context,
                                                      backgroundColor: Colors.white,
                                                      shape: const RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.only(
                                                          topLeft: Radius.circular(25),
                                                          topRight: Radius.circular(25),
                                                        ),
                                                      ),
                                                      builder: (context) {
                                                        return SizedBox(
                                                          height: MediaQuery.of(context).size.height * 0.4,
                                                          child: Padding(
                                                            padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                                            child: Column(
                                                              children: [
                                                                SizedBox(
                                                                  height: height * 0.05,
                                                                ),
                                                                Row(
                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                  children: [
                                                                    Image.asset(
                                                                      "assets/images/minio.png",
                                                                      width: 40,
                                                                      height: 40,
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsets.only(right: 8.0),
                                                                      child: Column(
                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                        children: [
                                                                          SizedBox(
                                                                            width: width * 0.7,
                                                                            child: Text(
                                                                              objects[index].key.toString(),
                                                                              maxLines: 2,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.justify,
                                                                              style: TextTypography.titleSmall
                                                                                  .copyWith(color: colorTheme.text),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsets.only(top: 4.0),
                                                                            child: Text(
                                                                              objects[index].lastModifiedDateTime ==
                                                                                          null ||
                                                                                      objects[index].lastModified ==
                                                                                          null
                                                                                  ? ""
                                                                                  : "${ConvertDate().convertGregorianTimeToJalali(objects[index].lastModifiedDateTime.toString())} | ${ConvertDate().convertGregorianToJalali(objects[index].lastModified.toString())}",
                                                                              style: TextTypography.labelSmall.copyWith(
                                                                                  color: colorTheme.textVariant),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsets.only(top: 4.0),
                                                                            child: Text(
                                                                              objects[index]
                                                                                  .size
                                                                                  .toString()
                                                                                  .toPersianDigit(),
                                                                              style: TextTypography.labelSmall.copyWith(
                                                                                  color: colorTheme.textVariant),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                                SizedBox(
                                                                    width: MediaQuery.of(context).size.width * 0.8,
                                                                    child: Divider(
                                                                      color: colorTheme.borders,
                                                                    )),
                                                                SizedBox(
                                                                  height: MediaQuery.of(context).size.width * 0.05,
                                                                ),
                                                                BlocBuilder<ObjectDownloadBloc,
                                                                    ObjectDownloadBlocState>(
                                                                  bloc: _objectDownloadBloc,
                                                                  builder: (BuildContext context,
                                                                      ObjectDownloadBlocState state) {
                                                                    final bool loading =
                                                                        state is ObjectDownloadBlocStateLoading;
                                                                    return loading
                                                                        ? BallBeatProgressIndicator(
                                                                            color: colorTheme.primary,
                                                                            size: 20,
                                                                          )
                                                                        : AppButton(
                                                                            customHeight: 48,
                                                                            customWidth: width,
                                                                            title: "main.download".tr(),
                                                                            isFilledEnable: true,
                                                                            onPressed: () {
                                                                              loading
                                                                                  ? null
                                                                                  : setState(() {
                                                                                      _objectDownloadBloc.add(
                                                                                          ObjectDownloadBlocEvent
                                                                                              .objectDownloadEventCalled(
                                                                                                  ObjectDownloadParam(
                                                                                                      accessKeyId: widget
                                                                                                          .accessKeyId,
                                                                                                      sessionToken: widget
                                                                                                          .sessionToken,
                                                                                                      secretAccessKey:
                                                                                                          widget
                                                                                                              .secretAccessKey,
                                                                                                      bucketName: widget
                                                                                                          .bucketName,
                                                                                                      objectName:
                                                                                                          objects[index]
                                                                                                              .key!)));
                                                                                    });
                                                                            },
                                                                            buttonType: ButtonType.isFilled,
                                                                            bgColor: colorTheme.primary,
                                                                            isSecondaryEnable: true,
                                                                            rightIcon: Magicon.download,
                                                                            leftIcon: null,
                                                                          );
                                                                  },
                                                                ),
                                                                SizedBox(
                                                                  height: MediaQuery.of(context).size.width * 0.05,
                                                                ),
                                                                BlocBuilder<ObjectRemoveBloc, ObjectRemoveState>(
                                                                  bloc: _objectRemoveBloc,
                                                                  builder:
                                                                      (BuildContext context, ObjectRemoveState state) {
                                                                    final bool loading =
                                                                        state is ObjectRemoveStateLoading;
                                                                    return loading
                                                                        ? BallBeatProgressIndicator(
                                                                            color: colorTheme.primary,
                                                                            size: 20,
                                                                          )
                                                                        : AppErrorButton(
                                                                            buttonErrorType:
                                                                                ButtonErrorType.isFilledError,
                                                                            title: "main.remove".tr(),
                                                                            customHeight: 48,
                                                                            customWidth: width,
                                                                            rightIcon: Magicon.logIn,
                                                                            leftIcon: null,
                                                                            onPressed: () {
                                                                              _objectRemoveBloc.add(ObjectRemoveEvent
                                                                                  .objectRemoveEventCalled(
                                                                                      ObjectRemoveParam(
                                                                                          accessKeyId:
                                                                                              widget.accessKeyId,
                                                                                          secretAccessKey:
                                                                                              widget.secretAccessKey,
                                                                                          sessionToken:
                                                                                              widget.sessionToken,
                                                                                          bucketName: widget.bucketName,
                                                                                          objectName: objects[index]
                                                                                              .key!
                                                                                              .toString())));
                                                                            },
                                                                          );
                                                                  },
                                                                ),
                                                                SizedBox(
                                                                  height: MediaQuery.of(context).size.width * 0.03,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        );
                                                      });
                                                },
                                                color: colorTheme.text,
                                              ),
                                            ),
                                          );
                                        },
                                        separatorBuilder: (_, __) => const SizedBox(),
                                      ),
                                      SliverToBoxAdapter(
                                        child: Container(
                                          height: height * 0.05,
                                        ),
                                      )
                                    ],
                                  )),
                      );
              },
            ),
          ),
        ),
        floatingActionButton: BlocBuilder<ObjectUploadBloc, ObjectUploadState>(
          bloc: _objectUploadBloc,
          builder: (BuildContext context, ObjectUploadState state) {
            final bool loading = state is ObjectUploadStateLoading;
            return FloatingActionButton.extended(
              backgroundColor: colorTheme.layer,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              onPressed: loading
                  ? null
                  : () {
                      setState(() async {
                        FilePickerResult? result = await FilePicker.platform.pickFiles(type: FileType.image);
                        List<int>? byteFile = result?.files.first.bytes?.toList();

                        if (result != null) {
                          setState(() {
                            if (kIsWeb) {
                              fileName = result.files.single.name;
                              _objectUploadBloc.add(ObjectUploadEvent.objectUploadEventCalled(ObjectUploadParam(
                                  secretAccessKey: widget.secretAccessKey,
                                  sessionToken: widget.sessionToken,
                                  accessKeyId: widget.accessKeyId,
                                  objectName: fileName,
                                  bucketName: widget.bucketName,
                                  byteFile: byteFile,
                                  file: File(""))));
                            } else {
                              file = File(result.files.single.path!);
                              fileName = result.files.single.name;

                              _objectUploadBloc.add(
                                ObjectUploadEvent.objectUploadEventCalled(
                                  ObjectUploadParam(
                                    secretAccessKey: widget.secretAccessKey,
                                    sessionToken: widget.sessionToken,
                                    accessKeyId: widget.accessKeyId,
                                    objectName: fileName,
                                    bucketName: widget.bucketName,
                                    file: file,
                                  ),
                                ),
                              );
                            }
                          });
                        } else {}
                      });
                    },
              label: loading
                  ? BallBeatProgressIndicator(
                      color: colorTheme.primary,
                      size: 20,
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/images/upl.png",
                          width: 24,
                          color: colorTheme.onPrimaryContainer,
                        ),
                        Text(
                          'main.upload_file'.tr(),
                          style: TextTypography.labelLarge.copyWith(color: colorTheme.primary),
                        ),
                      ],
                    ),
            );
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
