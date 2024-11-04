import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/core/widgets/button_primary.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:ios_samx/core/widgets/show_image.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/file_list/param/file_list_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/get_envelope_send_info/param/get_envelope_send_info_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/send_envelope/param/send_envelope_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/presentation/bloc/file_list/file_list_bloc.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/presentation/bloc/get_envelope_send_info/get_envelope_send_info_bloc.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/presentation/bloc/send_envelope/send_envelop_bloc.dart';
import 'package:ios_samx/feature/main_app/dashboard/presentation/pages/dashboard_screen.dart';
import 'package:ios_samx/injection_container.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:flutter_network_image/flutter_network_image.dart';
import 'package:hive/hive.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

import '../../../../../core/constant/app_style.dart';
import '../../../../../core/constant/strings.dart';

class ClaimScreen4 extends StatefulWidget {
  final String envelopeId;
  final String costDesc;
  final String insurer;
  final String costDate;
  final String amount;
  final String costId;

  const ClaimScreen4({
    super.key,
    required this.envelopeId,
    required this.costDesc,
    required this.insurer,
    required this.costDate,
    required this.amount,
    required this.costId,
  });

  @override
  State<ClaimScreen4> createState() => _ClaimScreen4State();
}

class _ClaimScreen4State extends State<ClaimScreen4> {
  late GetEnvelopeSendInfoBloc _getEnvelopeSendInfoBloc;
  late SendEnvelopBloc _sendEnvelopBloc;
  late FileListBloc _fileListBloc;
  late List claimItems2;
  List imageList = [];

  List claimItems = [
    "darmanet.cost_description",
    "darmanet.insured_person_name",
    "darmanet.cost_date",
    "darmanet.amount",
  ];

  final Box box = Hive.box(Strings.appDBName);

  @override
  void initState() {
    _getEnvelopeSendInfoBloc = sl<GetEnvelopeSendInfoBloc>();
    _sendEnvelopBloc = sl<SendEnvelopBloc>();
    _fileListBloc = sl<FileListBloc>();
    claimItems2 = [widget.costDesc, widget.insurer, widget.costDate, widget.amount.toPersianDigit()];
    _fileListBloc.add(
      FileListEvent.fileListEventCalled(
        param: FileListParam(
          costItemId: widget.costId,
          limit: 15,
          offset: 0,
          sumFieldName: '',
          sortDir: 'ACS',
          sortField: null,
        ),
      ),
    );
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
          create: (context) => _getEnvelopeSendInfoBloc,
        ),
        BlocProvider(
          create: (context) => _sendEnvelopBloc,
        ),
        BlocProvider(
          create: (context) => _fileListBloc,
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<SendEnvelopBloc, SendEnvelopeState>(
            bloc: _sendEnvelopBloc,
            listener: (context, state) {
              state.maybeWhen(
                loadFailure: (failure) {
                  showErrorWidget(context, failure.code, failure.message!);
                },
                loadSuccess: (sendEnvelopeEntities) {
                  if (sendEnvelopeEntities.succeed == false) {
                    showErrorWidget(context, 101, sendEnvelopeEntities.errorMessage!);
                  } else {
                    _getEnvelopeSendInfoBloc.add(
                      GetEnvelopeSendInfoEvent.getEnvelopeSendInfoEventCalled(
                        param: GetEnvelopeSendInfoParam(id: widget.envelopeId),
                      ),
                    );
                  }
                },
                orElse: () {},
              );
            },
          ),
          BlocListener<GetEnvelopeSendInfoBloc, GetEnvelopeSendInfoState>(
            bloc: _getEnvelopeSendInfoBloc,
            listener: (context, state) {
              state.maybeWhen(
                loadFailure: (failure) {
                  showErrorWidget(context, failure.code, failure.message!);
                },
                loadSuccess: (getSendEnvelopeSendInfoEntities) {
                  showSuccessWidget(context, "darmanet.cost_request_submitted".tr(), () {
                    Navigator.push(
                      context,
                      PageTransition(child: const DashboardScreen(), type: PageTransitionType.leftToRight),
                    );
                  });
                },
                orElse: () {},
              );
            },
          ),
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
                    orElse: () {});
              })
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
                  height: height * 0.05,
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: Text(
                    'darmanet.confirm_information'.tr(),
                    style: AppStyle.size14Weight600,
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Directionality(
                  textDirection: TextDirection.ltr,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                    child: ListView.separated(
                      itemCount: claimItems.length,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.only(
                            bottom: 15,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                claimItems2[index],
                                style: AppStyle.size14Weight600,
                              ),
                              Text(
                                claimItems[index],
                                style: AppStyle.size14Weight400Grey50,
                              ).tr(),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return Divider(
                          height: 2,
                          color: colorTheme.white,
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Directionality(
                  textDirection: TextDirection.ltr,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BlocBuilder<FileListBloc, FileListState>(
                        bloc: _fileListBloc,
                        builder: (context, state) {
                          final loading = state is FileListStateLoading;
                          return SizedBox(
                            width: width * 0.6,
                            height: 50,
                            child: loading
                                ? const SizedBox(
                                    height: 40,
                                    width: 40,
                                    child: Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: CircularProgressIndicator(),
                                    ))
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
                                                      imagePath: imageList[index], imageName: '', token: token)));
                                        },
                                        child: Center(
                                            child: Image(
                                                width: 75,
                                                height: 75,
                                                fit: BoxFit.cover,
                                                image: NetworkImageProvider(imageList[index], headers: {
                                                  "Authorization": "Bearer $token",
                                                }))),
                                      );
                                    }),
                          );
                        },
                      ),
                      Text(
                        'darmanet.images'.tr(),
                        style: AppStyle.size14Weight400Grey50,
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                BlocBuilder<GetEnvelopeSendInfoBloc, GetEnvelopeSendInfoState>(
                  bloc: _getEnvelopeSendInfoBloc,
                  builder: (context, state) {
                    final bool loadingGetEnvelope = state is GetEnvelopeSendInfoStateLoading;
                    return BlocBuilder<SendEnvelopBloc, SendEnvelopeState>(
                      bloc: _sendEnvelopBloc,
                      builder: (context, state) {
                        final loadingSendEnvelope = state is SendEnvelopeStateLoading;
                        return ButtonPrimary(
                          iconWidth: 0,
                          title: "darmanet.confirm".tr(),
                          //  title:  'darmanet.confirm_information'.tr(),
                          buttonLoading: loadingGetEnvelope || loadingSendEnvelope,
                          customWidth: width * 0.9,
                          customHeight: 48,
                          onPressed: () {
                            _sendEnvelopBloc.add(
                              SendEnvelopeEvent.sendEnvelopeEventCalled(
                                param: SendEnvelopeParam(id: widget.envelopeId),
                              ),
                            );
                          },
                        );
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
}
