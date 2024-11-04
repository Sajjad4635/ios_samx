import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/extensions/convert_date.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/feature/otrs_app/presentation/pages/ticket_form.dart';
import 'package:ios_samx/feature/otrs_app/presentation/pages/ticketing_login.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:ios_samx/feature/otrs_app/domain/usecase/list/params/ticketing_list_params.dart';
import 'package:ios_samx/feature/otrs_app/presentation/pages/ticketing_info.dart';
import 'package:hive/hive.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

import '../../../../core/base_widget/app_fab/app_fab.dart';
import '../../../../core/constant/app_style.dart';
import '../../../../core/constant/strings.dart';
import '../../../../injection_container.dart';
import '../../../main_app/dashboard/presentation/pages/dashboard_screen.dart';
import '../../domain/entity/list/ticket_list_response_data_ticket/ticket_list_response_data_ticket.dart';
import '../../domain/usecase/search/params/ticketing_search_params.dart';
import '../bloc/list/ticketing_list_bloc.dart';
import '../bloc/search/ticketing_search_bloc.dart';

class TicketingListScreen extends StatefulWidget {
  final String sessionID;
  final String userLogin;

  const TicketingListScreen({super.key, required this.sessionID, required this.userLogin});

  @override
  State<TicketingListScreen> createState() => _TicketingListScreenState();
}

class _TicketingListScreenState extends State<TicketingListScreen> {
  late TicketingListBloc _ticketingListBloc;
  late TicketingSearchBloc _ticketingSearchBloc;
  Box box = Hive.box(Strings.appDBName);
  List<TicketingListResponseDataTicket> tickets = [];
  List<String> ticketID = [];

  @override
  void initState() {
    _ticketingListBloc = sl<TicketingListBloc>();
    _ticketingSearchBloc = sl<TicketingSearchBloc>();
    _ticketingSearchBloc.add(
      TicketingSearchEvent.ticketingSearchEventCalled(
        TicketingSearchParams(
          sessionId: widget.sessionID,
        ),
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = ResponsiveLayout.getDeviceType(context);
    final double height = MediaQuery.of(context).size.height;
    final colorTheme = context.colorTheme<CustomTheme>();
    final bool isPersian = context.locale == const Locale('fa');

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => _ticketingListBloc,
        ),
        BlocProvider(
          create: (context) => _ticketingSearchBloc,
        ),
      ],
      child: SafeArea(
        child: Scaffold(
            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
            floatingActionButton: AppFab(
              isTitle: true,
              isPrimary: true,
              title: "otrs.register_ticket".tr(),
              icon: Icons.add,
              customWidth: width * 0.4,
              customHeight: height * 0.07,
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  PageTransition(
                    child: NewTicketFormScreen(sessionID: widget.sessionID, customerUser: widget.userLogin),
                    type: PageTransitionType.leftToRight,
                  ),
                );
              },
            ),
            backgroundColor: colorTheme.white,
            appBar: AppBar(
              backgroundColor: colorTheme.bgInverse,
              elevation: 0,
              centerTitle: true,
              title: Text(
                'otrs.list_tickets'.tr(),
                style: AppStyle.size18Weight700,
              ),
              leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      PageTransition(child: const DashboardScreen(), type: PageTransitionType.leftToRight),
                      (route) => false);
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
            body: BlocConsumer<TicketingListBloc, TicketingListState>(
              bloc: _ticketingListBloc,
              listener: (context, state) {
                state.maybeWhen(
                  loadFailure: (failure) {
                    showErrorWidget(context, failure.code, failure.message!);
                  },
                  loadSuccess: (ticketListResponseEntity) {
                    setState(() {
                      tickets = ticketListResponseEntity.listResponseData.ticket;
                    });
                  },
                  orElse: () {},
                );
              },
              builder: (context, state) {
                final bool loading = state is TicketingListStateLoading;
                return BlocConsumer<TicketingSearchBloc, TicketingSearchState>(
                  bloc: _ticketingSearchBloc,
                  listener: (context, state) {
                    state.maybeWhen(
                      loadFailure: (failure) {
                        box.put("otrsAfterLogin", "list");
                        Navigator.push(
                          context,
                          PageTransition(
                            child: const TicketingLoginScreen(),
                            type: PageTransitionType.rightToLeft,
                          ),
                        );
                        showErrorWidget(
                            context,
                            failure.code,
                            failure.message!.toString().contains(" Authorization failing!")
                                ? "otrs.login_again".tr()
                                : failure.message!);
                        // String? errorMessage  = error.message!.toString().contains("Authorization failing") || error.code == 403 ? " اعتبار سنجی موفق نبود\n مجددا وارد شوید "  : error.message ;
                        // showErrorWidget(context, error.code!, errorMessage!);
                        // showErrorWidget(context, failure.code, failure.message!);
                      },
                      loadSuccess: (ticketingSearchResponseEntity) {
                        setState(() {
                          ticketID = ticketingSearchResponseEntity.searchResponseData.ticketID;
                        });
                        if (ticketingSearchResponseEntity.searchResponseData.ticketID.isNotEmpty) {
                          _ticketingListBloc.add(TicketingListEvent.ticketingListEventCalled(TicketingListParams(
                              sessionID: widget.sessionID,
                              ticketID: ticketingSearchResponseEntity.searchResponseData.ticketID)));
                        }
                      },
                      orElse: () {},
                    );
                  },
                  builder: (context, state) {
                    final searchLoading = state is TicketingSearchStateLoading;
                    return Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: SizedBox(
                          width: width * 0.9,
                          child: loading || searchLoading
                              ? Container(
                                  alignment: Alignment.center,
                                  child: const CircularProgressIndicator(),
                                )
                              : ticketID.isEmpty
                                  ? Center(
                                      child: Text(
                                        "otrs.no_tickets_available".tr(),
                                        style: AppStyle.size16Weight500,
                                      ),
                                    )
                                  : Align(
                                      alignment: Alignment.topCenter,
                                      child: CustomScrollView(
                                        slivers: [
                                          SliverList(
                                            delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
                                              return Align(
                                                alignment: Alignment.topCenter,
                                                child: Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    children: [
                                                      SizedBox(
                                                        height: height * 0.21,
                                                        width: width * 0.9,
                                                        child: Stack(
                                                          children: [
                                                            Positioned(
                                                              bottom: 0,
                                                              left: 0,
                                                              right: 0,
                                                              top: 16,
                                                              child: Container(
                                                                decoration: BoxDecoration(
                                                                    color: colorTheme.bg,
                                                                    borderRadius: const BorderRadius.only(
                                                                      topLeft: Radius.circular(8),
                                                                      topRight: Radius.circular(8),
                                                                    ),
                                                                    border: Border(
                                                                      top: BorderSide(
                                                                          width: 2, color: colorTheme.borders),
                                                                      left: BorderSide(
                                                                          width: 2, color: colorTheme.borders),
                                                                      right: BorderSide(
                                                                          width: 2, color: colorTheme.borders),
                                                                      bottom: BorderSide(
                                                                          width: 0.1, color: colorTheme.borders),
                                                                    )),
                                                                child: Padding(
                                                                  padding: const EdgeInsets.all(8.0),
                                                                  child: Column(
                                                                    children: [
                                                                      const Spacer(),
                                                                      TicketListItem(
                                                                          title: "otrs.title".tr(),
                                                                          value: tickets[index].title),
                                                                      const Spacer(),
                                                                      TicketListItem(
                                                                          title: "otrs.code".tr(),
                                                                          value: tickets[index].ticketNumber),
                                                                      const Spacer(),
                                                                      TicketListItem(
                                                                          title: "otrs.registration_date".tr(),
                                                                          value: isPersian
                                                                              ? ConvertDate().convertGregorianToJalali(
                                                                                  tickets[index].createdDate)
                                                                              : tickets[index]
                                                                                  .createdDate
                                                                                  .split(" ")
                                                                                  .first),
                                                                      const Spacer(),
                                                                      Row(
                                                                        children: [
                                                                          Text(
                                                                            "otrs.priority".tr(),
                                                                            style: AppStyle.size13Weight400.copyWith(
                                                                                color: colorTheme.textVariant),
                                                                          ),
                                                                          const Spacer(),
                                                                          Row(
                                                                            children: [
                                                                              Text(
                                                                                changePriorityIdToName(
                                                                                    tickets[index].priorityID),
                                                                                style: AppStyle.size12Weight600
                                                                                    .copyWith(
                                                                                        color: getColorFromPriorityID(
                                                                                            tickets[index].priorityID,
                                                                                            context)),
                                                                              ),
                                                                              Icon(
                                                                                Icons.flag,
                                                                                color: getColorFromPriorityID(
                                                                                    tickets[index].priorityID, context),
                                                                              )
                                                                            ],
                                                                          )
                                                                        ],
                                                                      ),
                                                                      const Spacer(),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Positioned(
                                                                left: 10,
                                                                top: 0,
                                                                child: TicketStatusBadgeOTRS(
                                                                    status: tickets[index].state)),
                                                          ],
                                                        ),
                                                      ),
                                                      GestureDetector(
                                                        onTap: () {
                                                          Navigator.push(
                                                              context,
                                                              PageTransition(
                                                                child: TicketInfoScreen(
                                                                  sessionID: widget.sessionID,
                                                                  ticketID: tickets[index].ticketID,
                                                                  ticketTitle: tickets[index].title,
                                                                ),
                                                                type: PageTransitionType.leftToRight,
                                                              ));
                                                        },
                                                        child: Container(
                                                          height: height * 0.06,
                                                          width: width * 0.9,
                                                          decoration: BoxDecoration(
                                                              color: colorTheme.primaryContainer,
                                                              borderRadius: const BorderRadius.only(
                                                                  bottomLeft: Radius.circular(8),
                                                                  bottomRight: Radius.circular(8))),
                                                          child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                            children: [
                                                              Text(
                                                                "otrs.view_details".tr(),
                                                                style: AppStyle.size13Weight600.copyWith(
                                                                  color: colorTheme.primary,
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                width: 12,
                                                              ),
                                                              Image.asset(
                                                                "assets/images/arrow.png",
                                                                height: 15,
                                                                width: 15,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              );
                                            }, childCount: tickets.length),
                                          )
                                        ],
                                      ),
                                    ),
                        ),
                      ),
                    );
                  },
                );
              },
            )),
      ),
    );
  }
}

class TicketStatusBadgeOTRS extends StatelessWidget {
  const TicketStatusBadgeOTRS({
    super.key,
    required this.status,
  });

  final String status;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: getBadgeBackgroundColor(status, context),
        borderRadius: BorderRadius.circular(32),
        border: Border.all(color: getBadgeTitleColor(status: status, context: context)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Center(
            child: Text(
          status,
          style: AppStyle.size10Weight600Green.copyWith(color: getBadgeTitleColor(status: status, context: context)),
        )),
      ),
    );
  }
}

class TicketListItem extends StatelessWidget {
  const TicketListItem({
    super.key,
    required this.title,
    required this.value,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();
    final bool isPersian = context.locale == const Locale('fa');

    return SizedBox(
      child: Row(
        children: [
          Text(
            title,
            style: AppStyle.size13Weight400.copyWith(color: colorTheme.textVariant),
          ),
          const Spacer(),
          Text(
            isPersian ? value.toPersianDigit() : value,
            style: AppStyle.size13Weight600.copyWith(color: colorTheme.bgInverse),
          )
        ],
      ),
    );
  }
}

//-------------------------------

getBadgeTitleColor({required String status, required BuildContext context}) {
  final colorTheme = context.colorTheme<CustomTheme>();

  switch (status.toLowerCase()) {
    case "new":
      return colorTheme.success;

    case "closed successful":
      return colorTheme.success;

    case "closed unsuccessful":
      return colorTheme.onWarningContainer;

    case "open":
      return colorTheme.primary;

    case "removed":
      return colorTheme.error;
    case "pending reminder":
      return colorTheme.warning;
    case "pending auto close +":
      return colorTheme.warning;

    case "pending auto close -":
      return colorTheme.warning;

    case "closed with workaround":
      return colorTheme.warning;

    case "merged":
      return colorTheme.info;

    default:
      return Colors.pink;
  }
}

Color getBadgeBackgroundColor(String status, BuildContext context) {
  final colorTheme = context.colorTheme<CustomTheme>();

  switch (status.toLowerCase()) {
    case "new":
      return colorTheme.onSuccess;

    case "closed successful":
      return colorTheme.onSuccess;

    case "closed unsuccessful":
      return colorTheme.onWarning;

    case "open":
      return colorTheme.onPrimary;

    case "removed":
      return colorTheme.onError;

    case "pending reminder":
      return colorTheme.onWarning;

    case "pending auto close +":
      return colorTheme.onWarning;

    case "pending auto close -":
      return colorTheme.onWarning;

    case "closed with workaround":
      return colorTheme.onWarning;

    case "merged":
      return colorTheme.onInfo;

    default:
      return Colors.pink;
  }
}

//-------------------------------

Color getColorFromPriorityID(int priorityID, BuildContext context) {
  final colorTheme = context.colorTheme<CustomTheme>();

  switch (priorityID) {
    case 1:
      return colorTheme.solidVariant;
    case 2:
      return colorTheme.success;
    case 3:
      return colorTheme.warning;
    case 4:
      return colorTheme.onWarningContainer;
    case 5:
      return colorTheme.error;
    default:
      return colorTheme.primary;
  }
}

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
