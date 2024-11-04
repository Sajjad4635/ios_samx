import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/core/widgets/show_image.dart';
import 'package:ios_samx/feature/darmanet_app/cost_tracking/presentation/widgets/data_row_widget.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/file_list/param/file_list_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/presentation/bloc/file_list/file_list_bloc.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:flutter_network_image/flutter_network_image.dart';

import 'package:hive/hive.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

import '../../../../../core/constant/app_style.dart';
import '../../../../../core/constant/strings.dart';
import '../../../../../core/extensions/convert_date.dart';
import '../../../../../core/widgets/alert_dialog.dart';
import '../../../../../core/widgets/simple_rounded_container.dart';
import '../../../../../injection_container.dart';
import '../../domain/entities/get_person_family_list/records/family_records.dart';

class ClaimFollowupDetailScreen extends StatefulWidget {
  final String costItemId;
  final FamilyRecords familyRecord;
  final String contractNumber;

  const ClaimFollowupDetailScreen(
      {required this.costItemId, required this.contractNumber, required this.familyRecord, super.key});

  @override
  State<ClaimFollowupDetailScreen> createState() => _ClaimFollowupDetailScreenState();
}

class _ClaimFollowupDetailScreenState extends State<ClaimFollowupDetailScreen> {
  late FileListBloc _fileListBloc;
  List imageList = [];

  final Box box = Hive.box(Strings.appDBName);

  @override
  void initState() {
    _fileListBloc = sl<FileListBloc>();
    //todo update
    _fileListBloc.add(FileListEvent.fileListEventCalled(
        param: FileListParam(
      costItemId: widget.costItemId,
      limit: 15,
      offset: 0,
      sortDir: "ACS",
      sortField: null,
      sumFieldName: '',
    )));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();
    double height = MediaQuery.of(context).size.height;
    double width = ResponsiveLayout.getDeviceType(context);

    String token = box.get(Strings.authorization);

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => _fileListBloc,
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<FileListBloc, FileListState>(
            bloc: _fileListBloc,
            listener: (context, state) {
              state.maybeWhen(
                loadFailure: (failure) {
                  showErrorWidget(context, failure.code, failure.message!);
                },
                loadSuccess: (fileListEntities) {
                  for (int index = 0; index < fileListEntities.records.length; index++) {
                    setState(() {
                      imageList.add(
                          "${FlavorConfig.instance.variables["darmanetURL"]}/File/DownloadFile?path=${fileListEntities.records[index].newName}");
                    });
                  }
                },
                orElse: () {},
              );
            },
          )
        ],
        child: WillPopScope(
          onWillPop: () async {
            Navigator.of(context).pop();
            return false;
          },
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: colorTheme.bgInverse,
              elevation: 0,
              centerTitle: true,
              title: Text(
                'darmanet.damage_follow_up'.tr(),
                style: AppStyle.size18Weight700,
              ),
              leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.arrow_back,
                    color: colorTheme.layer,
                  ),
                ),
              ),
            ),
            body: Align(
              alignment: AlignmentDirectional.topCenter,
              child: SingleChildScrollView(
                child: SizedBox(
                  width: width * 0.9,
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.02,
                      ),
                      SimpleRoundedContainer(
                        width: width * 0.9,
                        height: height * 0.2,
                        bgColor: colorTheme.layer,
                        borderRadius: width * 0.01,
                        borderColor: colorTheme.borders,
                        widget: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: height * 0.02),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                alignment: AlignmentDirectional.topCenter,
                                child: Image(
                                  width: width * 0.15,
                                  height: 50,
                                  image: const AssetImage("assets/images/profile_account_icon.png"),
                                ),
                              ),
                              Container(
                                width: width * 0.7,
                                height: height * 0.2,
                                margin: const EdgeInsets.only(
                                  bottom: 10,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    DataRowWidget(
                                        title: widget.familyRecord.personName != null
                                            ? widget.familyRecord.personName.toString()
                                            : 'darmanet.unknown'.tr(),
                                        caption: 'darmanet.patient_name'.tr()),
                                    DataRowWidget(
                                      title: widget.familyRecord.nationalCode != null
                                          ? widget.familyRecord.nationalCode.toString().toPersianDigit()
                                          : 'darmanet.unknown',
                                      caption: 'darmanet.code'.tr(),
                                    ),
                                    DataRowWidget(
                                      title: widget.familyRecord.envelopeIndex != null
                                          ? widget.familyRecord.envelopeIndex.toString().toPersianDigit()
                                          : 'darmanet.unknown',
                                      caption: 'darmanet.file_code'.tr(),
                                    ),
                                    DataRowWidget(
                                      title: widget.contractNumber.toString().toPersianDigit(),
                                      caption: 'darmanet.contract_code'.tr(),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      SimpleRoundedContainer(
                        width: width * 0.9,
                        height: height * 0.15,
                        bgColor: colorTheme.layer,
                        borderRadius: width * 0.01,
                        borderColor: colorTheme.borders,
                        widget: Padding(
                          padding: EdgeInsets.symmetric(vertical: height * 0.01, horizontal: 10.0),
                          child: SizedBox(
                            width: width * 0.85,
                            height: height * 0.2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                DataRowWidget(
                                  title: widget.familyRecord.groupName != null
                                      ? widget.familyRecord.groupName.toString()
                                      : 'darmanet.unknown'.tr(),
                                  caption: 'darmanet.cost_group'.tr(),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'darmanet.cover'.tr(),
                                      style: AppStyle.size14Weight400costColor,
                                    ),
                                    SizedBox(
                                      width: width * 0.7,
                                      child: Text(
                                        widget.familyRecord.coverageName != null
                                            ? widget.familyRecord.coverageName.toString()
                                            : 'darmanet.unknown'.tr(),
                                        textAlign: TextAlign.left,
                                        style: AppStyle.size14Weight600,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'darmanet.condition'.tr(),
                                      style: AppStyle.size14Weight400Grey50,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 2.0),
                                      child: Container(
                                        width: width * 0.3,
                                        height: height * 0.04,
                                        decoration: BoxDecoration(
                                            color: colorTheme.successContainer,
                                            border: Border.all(color: colorTheme.success),
                                            borderRadius: const BorderRadius.all(
                                              Radius.circular(20),
                                            )),
                                        child: Center(
                                          child: Text(
                                            widget.familyRecord.costStringDescription != null
                                                ? widget.familyRecord.costStringDescription.toString()
                                                : 'darmanet.unknown'.tr(),
                                            style: AppStyle.size11Weight500.copyWith(color: colorTheme.success),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      SimpleRoundedContainer(
                        width: width * 0.9,
                        height: height * 0.2,
                        bgColor: colorTheme.layer,
                        borderRadius: width * 0.01,
                        borderColor: colorTheme.borders,
                        widget: Padding(
                          padding: EdgeInsets.symmetric(vertical: height * 0.02, horizontal: 10.0),
                          child: Container(
                              width: width * 0.85,
                              margin: const EdgeInsets.only(
                                bottom: 10,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  DataRowWidget(
                                    title: widget.familyRecord.centerName != null
                                        ? widget.familyRecord.centerName.toString().toPersianDigit()
                                        : 'darmanet.unknown'.tr(),
                                    caption: 'darmanet.center_insurer'.tr(),
                                  ),
                                  DataRowWidget(
                                    title: widget.familyRecord.costDate != null
                                        ? ConvertDate()
                                            .convertGregorianToJalali(widget.familyRecord.costDate.toString())
                                        : 'darmanet.unknown'.tr(),
                                    caption: 'darmanet.cost_date'.tr(),
                                  ),
                                  DataRowWidget(
                                    title: widget.familyRecord.dateInserted != null
                                        ? ConvertDate().convertGregorianToJalali(widget.familyRecord.dateInserted!)
                                        : 'darmanet.unknown'.tr(),
                                    caption: 'darmanet.fee_submission_date'.tr(),
                                  ),
                                  DataRowWidget(
                                    title: widget.familyRecord.chequeDate != null
                                        ? ConvertDate().convertGregorianToJalali(widget.familyRecord.chequeDate!)
                                        : 'darmanet.unknown'.tr(),
                                    caption: 'darmanet.pay_date'.tr(),
                                  ),
                                ],
                              )),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      SimpleRoundedContainer(
                          width: width * 0.9,
                          height: height * 0.2,
                          bgColor: colorTheme.layer,
                          borderRadius: width * 0.01,
                          borderColor: colorTheme.borders,
                          widget: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: height * 0.02),
                                child: Image(
                                  width: width * 0.15,
                                  image: const AssetImage("assets/images/money_frame.png"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          'darmanet.fee_amount'.tr(),
                                          style: AppStyle.size14Weight400costColor,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          widget.familyRecord.givenAmount != null
                                              ? widget.familyRecord.givenAmount.toString().toPersianDigit().seRagham()
                                              : 'darmanet.unknown'.tr(),
                                          style: AppStyle.size14Weight600,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.06,
                                      child: VerticalDivider(
                                        color: colorTheme.textVariant,
                                        thickness: 1,
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          'darmanet.price_paid'.tr(),
                                          style: AppStyle.size14Weight400costColor,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          widget.familyRecord.payableAmount != null
                                              ? widget.familyRecord.payableAmount.toString().toPersianDigit().seRagham()
                                              : 'darmanet.unknown'.tr(),
                                          style: AppStyle.size14Weight600,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      SimpleRoundedContainer(
                        width: width * 0.9,
                        height: height * 0.2,
                        bgColor: colorTheme.layer,
                        borderRadius: width * 0.01,
                        borderColor: colorTheme.borders,
                        widget: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'darmanet.images_included'.tr(),
                                style: AppStyle.size14Weight400costColor,
                              ),
                              BlocBuilder<FileListBloc, FileListState>(
                                bloc: _fileListBloc,
                                builder: (context, state) {
                                  final loading = state is FileListStateLoading;
                                  return SizedBox(
                                    width: width * 0.55,
                                    height: 75,
                                    child: loading
                                        ? const SizedBox(height: 40, width: 40, child: CircularProgressIndicator())
                                        : ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            itemCount: imageList.length,
                                            itemBuilder: (context, index) {
                                              return GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) => FullScreenImageFile(
                                                              imagePath: imageList[index],
                                                              imageName: '',
                                                              token: token)));
                                                },
                                                child: Image(
                                                  width: 75,
                                                  height: 75,
                                                  fit: BoxFit.cover,
                                                  image: NetworkImageProvider(imageList[index], headers: {
                                                    "Authorization": "Bearer $token",
                                                  }),
                                                ),
                                              );
                                            }),
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      SimpleRoundedContainer(
                          width: width * 0.9,
                          height: height * 0.20,
                          bgColor: colorTheme.layer,
                          borderRadius: width * 0.01,
                          borderColor: colorTheme.borders,
                          widget: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  alignment: AlignmentDirectional.topStart,
                                  child: Text(
                                    'darmanet.return_description'.tr(),
                                    style: AppStyle.size14Weight400costColor,
                                  ),
                                ),
                                Container(
                                  alignment: AlignmentDirectional.topStart,
                                  child: Text(
                                    widget.familyRecord.costDescription != null
                                        ? widget.familyRecord.costDescription.toString()
                                        : 'darmanet.unknown'.tr(),
                                    style: AppStyle.size14Weight600,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  alignment: AlignmentDirectional.topStart,
                                  child: Text(
                                    'darmanet.description'.tr(),
                                    style: AppStyle.size14Weight400costColor,
                                  ),
                                ),
                                Container(
                                  alignment: AlignmentDirectional.topStart,
                                  child: Text(
                                    widget.familyRecord.costDescriptionTitle != null
                                        ? widget.familyRecord.costDescriptionTitle.toString()
                                        : 'darmanet.unknown'.tr(),
                                    style: AppStyle.size14Weight600,
                                  ),
                                ),
                              ],
                            ),
                          )),
                      SizedBox(
                        height: height * 0.02,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
