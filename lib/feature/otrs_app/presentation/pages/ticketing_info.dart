import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/feature/otrs_app/presentation/pages/ticketing_list.dart';

import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/app_style.dart';
import '../../../../core/extensions/convert_date.dart';
import '../../../../injection_container.dart';
import '../../domain/entity/info/ticket_info_article_data/ticketing_info_response_article.dart';
import '../../domain/entity/info/ticket_info_header_data/ticketing_info_response_header.dart';
import '../../domain/usecase/info/params/ticketing_info_params.dart';
import '../bloc/info/ticketing_info_bloc.dart';

class TicketInfoScreen extends StatefulWidget {
  const TicketInfoScreen({super.key, required this.sessionID, required this.ticketID, required this.ticketTitle});

  final String sessionID;
  final int ticketID;
  final String ticketTitle;

  @override
  State<TicketInfoScreen> createState() => _TicketInfoScreenState();
}

class _TicketInfoScreenState extends State<TicketInfoScreen> {
  late TicketingInfoBloc _ticketingInfoBloc;

  late List<TicketingInfoResponseHeader> ticketingInfoEntityListR;
  List<TicketingInfoResponseArticle> articles = [];
  List<Conversation> messages = [];

  @override
  void initState() {
    ticketingInfoEntityListR = <TicketingInfoResponseHeader>[];
    _ticketingInfoBloc = sl<TicketingInfoBloc>();
    _ticketingInfoBloc.add(TicketingInfoEvent.ticketingInfoEventCalled(TicketingInfoParams(
      sessionID: widget.sessionID,
      ticketID: widget.ticketID,
      allArticles: 1,
    )));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = ResponsiveLayout.getDeviceType(context);
    final double height = MediaQuery.of(context).size.height;
    final bool isPersian = context.locale == const Locale('fa');

    return BlocProvider(
      create: (context) => _ticketingInfoBloc,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: AppColors.darkGray,
          elevation: 0,
          centerTitle: true,
          title: Text(
            widget.ticketTitle,
            style: AppStyle.size18Weight700,
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.arrow_back,
                color: AppColors.lightGrey,
              ),
            ),
          ),
        ),
        body: BlocConsumer<TicketingInfoBloc, TicketingInfoState>(
          bloc: _ticketingInfoBloc,
          listener: (context, state) {
            state.maybeWhen(
              loadFailure: (failure) {
                showErrorWidget(context, failure.code, failure.message!);
              },
              loadSuccess: (ticketingInfoResponseEntity) {
                setState(() {
                  ticketingInfoEntityListR = ticketingInfoResponseEntity.listResponseData.ticketInfo;
                  articles = ticketingInfoEntityListR[0].articles;
                  int index = 0;
                  for (var element in articles) {
                    String subject = element.subject;
                    String from = element.from;
                    from = from.replaceAll("\"", "");
                    List<String> fromList = from.split("<");
                    String newFrom = fromList[0];

                    //  String headerTitle = "$newFrom $separator $subject" ;
                    List<String> headerTitle = [newFrom, subject];

                    messages.add(Conversation(
                        index: index, from: newFrom, subject: subject, body: element.body, headingTitle: headerTitle));
                    index++;
                    fromList.clear();
                  }
                });
              },
              orElse: () {},
            );
          },
          builder: (context, state) {
            bool loading = state is TicketingInfoStateLoading;
            return SingleChildScrollView(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: SizedBox(
                    width: width * .9,
                    height: height,
                    child: loading || ticketingInfoEntityListR.isEmpty
                        ? Container(
                            alignment: Alignment.center,
                            child: const CircularProgressIndicator(),
                          )
                        : Column(
                            children: [
                              const SizedBox(
                                height: 24,
                              ),
                              Container(
                                height: height * 0.25,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    border: const Border(
                                      top: BorderSide(width: 2, color: AppColors.outlineBright),
                                      left: BorderSide(width: 2, color: AppColors.outlineBright),
                                      right: BorderSide(width: 2, color: AppColors.outlineBright),
                                      bottom: BorderSide(width: 2, color: AppColors.outlineBright),
                                    )),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "otrs.ticket_status".tr(),
                                            style: AppStyle.size13Weight400.copyWith(color: AppColors.onSurfaceVariant),
                                          ),
                                          const Spacer(),
                                          TicketStatusBadgeOTRS(status: ticketingInfoEntityListR[0].state)
                                        ],
                                      ),
                                      const Spacer(),
                                      TicketListItem(
                                          title: "otrs.title".tr(), value: ticketingInfoEntityListR[0].title),
                                      const Spacer(),
                                      TicketListItem(
                                          title: "otrs.code".tr(), value: ticketingInfoEntityListR[0].ticketNumber),
                                      const Spacer(),
                                      //     isPersian?  ConvertDate().convertGregorianToJalali(tickets[index].createdDate) : tickets[index].createdDate
                                      TicketListItem(
                                          title: "otrs.registration_date".tr(),
                                          value: isPersian
                                              ? ConvertDate()
                                                  .convertGregorianToJalali(ticketingInfoEntityListR[0].created)
                                              : ticketingInfoEntityListR[0].created.split(" ").first),
                                      const Spacer(),
                                      Row(
                                        children: [
                                          Text(
                                            "otrs.priority".tr(),
                                            style: AppStyle.size13Weight400.copyWith(color: AppColors.onSurfaceVariant),
                                          ),
                                          const Spacer(),
                                          Row(
                                            children: [
                                              Text(
                                                changePriorityIdToName(ticketingInfoEntityListR[0].priorityID),
                                                style: AppStyle.size12Weight600.copyWith(
                                                    color:
                                                        getColorFromPriorityID(ticketingInfoEntityListR[0].priorityID)),
                                              ),
                                              Icon(
                                                Icons.flag,
                                                color: getColorFromPriorityID(ticketingInfoEntityListR[0].priorityID),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              OtrsTicketArticlesMessage(messages: messages, ),
                            ],
                          ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

// ------------------------------------------------------------------------------
class OtrsTicketArticlesMessage extends StatefulWidget {
  const OtrsTicketArticlesMessage({
    super.key,
    required this.messages,
  });

  final List<Conversation> messages;

  @override
  State<OtrsTicketArticlesMessage> createState() => _OtrsTicketArticlesMessageState();
}

class _OtrsTicketArticlesMessageState extends State<OtrsTicketArticlesMessage> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 1,
        itemBuilder: (context, index) {
          return Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              ExpansionPanelList(
                expansionCallback: (panelIndex, isExpanded) {
                  setState(() {
                    widget.messages[panelIndex].isExpanded = isExpanded ;
                  });
                },
                children: widget.messages.map((Conversation item) {
                  return ExpansionPanel(
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Row
                            (
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/images/avatars_icon.png",
                                height: 24,
                                width: 24,
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Text(
                                item.from.split("@").first,
                                style: AppStyle.size12Weight600.copyWith(decorationStyle: TextDecorationStyle.dotted),
                                textAlign: TextAlign.right,
                                textDirection: TextDirection.rtl,
                              ),
                              const Text(" - "),
                              Text(
                                item.subject,
                                style: AppStyle.size12Weight600.copyWith(decorationStyle: TextDecorationStyle.dotted),
                                textAlign: TextAlign.right,
                                textDirection: TextDirection.rtl,
                              ),
                            ],
                          ),
                        );

                      },
                      body:
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          children: [
                            const Divider(
                              color: AppColors.blue80,
                              thickness: 1,
                            ),
                            Container(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  item.body,
                                  style: AppStyle.size12Weight400,
                                  textAlign: TextAlign.right,
                                )),
                            const SizedBox(height: 16,),
                          ],
                        ),
                      ),
                    isExpanded:  item.isExpanded
                  );
                },).toList(),
              ),
            ],
          );
        },
      ),
    );
  }
}

// ------------------------------------------------------------------------------
class Conversation {
  final int index;
  final String from;
  final String subject;
  final String body;
  final List<String> headingTitle;
  bool  isExpanded ;

  Conversation({
    required this.index,
    required this.from,
    required this.subject,
    required this.body,
    required this.headingTitle,
    this.isExpanded = false
  });
}

//------------------------------------------------------------------------------
getBadgeTitleColor(String status) {
  switch (status.toLowerCase()) {
    case "new":
      return AppColors.success;

    case "closed successful":
      return AppColors.success;

    case "closed unsuccessful":
      return AppColors.orange50;

    case "open":
      return AppColors.primary;

    case "removed":
      return AppColors.danger;
    case "pending reminder":
      return AppColors.warning;
    case "pending auto close +":
      return AppColors.warning;

    case "pending auto close -":
      return AppColors.warning;

    case "closed with workaround":
      return AppColors.warning;

    case "merged":
      return AppColors.info;

    default:
      return Colors.pink;
  }
}

//------------------------------------------------------------------------------
Color getBadgeBackgroundColor(String status) {
  switch (status.toLowerCase()) {
    case "new":
      return AppColors.successFix;

    case "closed successful":
      return AppColors.successFix;

    case "closed unsuccessful":
      return AppColors.orange90;

    case "open":
      return AppColors.primaryFix;

    case "removed":
      return AppColors.dangerFix;

    case "pending reminder":
      return AppColors.warningFix;

    case "pending auto close +":
      return AppColors.warningFix;

    case "pending auto close -":
      return AppColors.warningFix;

    case "closed with workaround":
      return AppColors.warningFix;

    case "merged":
      return AppColors.infoFix;

    default:
      return Colors.pink;
  }
}

//------------------------------------------------------------------------------
Color getColorFromPriorityID(int priorityID) {
  switch (priorityID) {
    case 1:
      return AppColors.gray50;
    case 2:
      return AppColors.success;
    case 3:
      return AppColors.warning;
    case 4:
      return AppColors.orange50;
    case 5:
      return AppColors.danger;
    default:
      return Colors.blueAccent;
  }
}

//------------------------------------------------------------------------------
String changePriorityIdToName(int priorityID) {
  switch (priorityID) {
    case 1:
      return "otrs.very_low_priority".tr();
    case 2:
      return "otrs.low_priority".tr();
    case 3:
      return "otrs.normal_priority".tr();
    case 4:
      return "otrs.high_priority".tr();
    case 5:
      return "otrs.very_high_priority".tr();
    default:
      return "";
  }
}
//------------------------------------------------------------------------------

