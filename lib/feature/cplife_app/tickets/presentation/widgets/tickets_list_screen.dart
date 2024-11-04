import 'package:ios_samx/core/constant/app_colors.dart';
import 'package:ios_samx/core/constant/theme/light_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:ios_samx/feature/cplife_app/tickets/domain/entities/tickets/tickets_response_data/items/items.dart';
import 'package:ios_samx/feature/cplife_app/tickets/presentation/bloc/tickets/tickets_bloc.dart';
import 'package:ios_samx/feature/cplife_app/tickets/presentation/widget/empty_ticket_list_widget.dart';
import 'package:ios_samx/feature/cplife_app/tickets/presentation/widgets/ticket_item.dart';
import 'package:ios_samx/feature/cplife_app/tickets/presentation/widgets/tickets_list_loading.dart';
import 'package:ios_samx/feature/main_app/dashboard/presentation/pages/dashboard_screen.dart';
import 'package:ios_samx/injection_container.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';

import '../../../../../core/responsive/responsive_layout.dart';

class TicketsListScreen extends StatefulWidget {
  const TicketsListScreen({super.key});

  @override
  State<TicketsListScreen> createState() => _TicketsListScreenState();
}

class _TicketsListScreenState extends State<TicketsListScreen> {
  late TicketsBloc _ticketsBloc;
  bool ticketsLoading = true;
  List<TicketResponseDataItems> ticketsList = [];

  @override
  void initState() {
    _ticketsBloc = sl<TicketsBloc>();
    _ticketsBloc.add(TicketsEvent.ticketsEventCalled(NoParams()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final width = ResponsiveLayout.getDeviceType(context);
    return SizedBox(
      width: width,
      child: BlocProvider(
        create: (context) => _ticketsBloc,
        child: BlocListener<TicketsBloc, TicketsState>(
          bloc: _ticketsBloc,
          listener: (context, state) {
            state.maybeWhen(
                loadFailure: (failure) {
                  setState(() {
                    ticketsLoading = false;
                    showErrorWidget(context, failure.code, failure.message!);
                  });
                },
                loadSuccess: (ticketsResponseEntities) {
                  setState(() {
                    ticketsLoading = false;
                    ticketsList =
                        ticketsResponseEntities.items;
                  });
                },
                orElse: () {});
          },
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Scaffold(
              backgroundColor: LightTheme.lightWhite,
              appBar: AppBar(
                backgroundColor: AppColors.darkGray,
                elevation: 0,
                centerTitle: true,
                title: Image(
                  width: width * 0.05,
                  height: height * 0.5,
                  image: const AssetImage(
                    'assets/images/sam_logo_white.png',
                  ),
                ),
                leading: IconButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        PageTransition(
                            child: const DashboardScreen(),
                            type: PageTransitionType.leftToRight),
                        (route) => false);
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
              body: Align(
                alignment: Alignment.topCenter,
                child: ticketsList.isEmpty
                    ? const EmptyTicketListWidget()
                    : SizedBox(
                        width: width * 0.9,
                        child: CustomScrollView(
                          slivers: [
                            const SliverToBoxAdapter(
                              child: SizedBox(
                                height: 16,
                              ),
                            ),
                            if (!ticketsLoading)
                              SliverToBoxAdapter(
                                child: Center(
                                  child: Text(
                                    ticketsList.isEmpty
                                        ? "cplife.no_tickets".tr()
                                        : "cplife.list_of_registered_tickets"
                                            .tr(),
                                    style: TextTypography.titleMedium,
                                  ),
                                ),
                              ),
                            const SliverToBoxAdapter(
                              child: SizedBox(
                                height: 16,
                              ),
                            ),
                            ticketsLoading
                                ? const SliverToBoxAdapter(
                                    child: TicketsListLoading())
                                : SliverList(
                                    delegate: SliverChildBuilderDelegate(
                                        (BuildContext context, int index) {
                                    return TicketItem(
                                        ticketResponseDataItem:
                                            ticketsList[index]);
                                  }, childCount: ticketsList.length))
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
