import 'package:ios_samx/core/base_widget/index.dart' show AppNoData;
import 'package:ios_samx/core/constant/theme/light_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/extensions/convert_date.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:ios_samx/feature/cplife_app/tickets/domain/entities/tickets/tickets_response_data/items/items.dart';
import 'package:ios_samx/feature/cplife_app/tickets/presentation/bloc/tickets/tickets_bloc.dart';
import 'package:ios_samx/feature/cplife_app/tickets/presentation/widgets/ticket_status_container.dart';
import 'package:ios_samx/injection_container.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class TicketsListUnitLinkScreen extends StatefulWidget {
  const TicketsListUnitLinkScreen({super.key});

  @override
  State<TicketsListUnitLinkScreen> createState() => _TicketsListUnitLinkScreenState();
}

class _TicketsListUnitLinkScreenState extends State<TicketsListUnitLinkScreen> {
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
                    ticketsList = ticketsResponseEntities.items;
                  });
                },
                orElse: () {});
          },
          child: ticketsList.isEmpty && !ticketsLoading
              ? AppNoData(text: 'cplife.no_submitted_request'.tr())
              : Directionality(
                  textDirection: TextDirection.rtl,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: ticketsLoading
                        ? const Center(child: CircularProgressIndicator())
                        : SizedBox(
                            width: width * 0.9,
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 24),
                                  ListView.builder(
                                      shrinkWrap: true,
                                      physics: const NeverScrollableScrollPhysics(),
                                      itemCount: ticketsList.length,
                                      itemBuilder: (context, index) {
                                        final deliveryType = switch (ticketsList[index].deliveryType) {
                                          'Deposit' => 'واریز',
                                          'Withdraw' => 'برداشت',
                                          _ => ''
                                        };
                                        return Container(
                                          margin: const EdgeInsets.only(bottom: 16),
                                          padding: const EdgeInsets.all(16),
                                          decoration: BoxDecoration(
                                            color: LightTheme.bg,
                                            border: Border.all(color: LightTheme.borders),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Text(
                                                        "cplife.tracking_code".tr(),
                                                        style: TextTypography.labelMedium,
                                                      ),
                                                      Text(
                                                        ("${ConvertDate().convertGregorianToJalali(ticketsList[index].dateTime).replaceAll("/", "").substring(4)}${((DateTime.parse(ticketsList[index].dateTime).minute) * 60 +  (DateTime.parse(ticketsList[index].dateTime).second)).toString().toPersianDigit()}${ticketsList[index].policyId.toString().toPersianDigit()}"),
                                                        style: TextTypography.labelLarge,
                                                      ),
                                                    ],
                                                  ),
                                                  TicketStatusContainer(
                                                    status: ticketsList[index]
                                                        .state,
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 8),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text(
                                                    "cplife.insurance_number".tr(),
                                                    style: TextTypography.labelMedium,
                                                  ),
                                                  Text(
                                                    "${ticketsList[index].policyId}".toPersianDigit(),
                                                    style: TextTypography.labelLarge,
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 8),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text(
                                                    "cplife.request_type".tr(),
                                                    style: TextTypography.labelMedium,
                                                  ),
                                                  Text(
                                                    deliveryType,
                                                    style: TextTypography.labelLarge,
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 8),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text(
                                                    "cplife.amount".tr(),
                                                    style: TextTypography.labelMedium,
                                                  ),
                                                  Text(
                                                    "${"${ticketsList[index].amount}".toPersianDigit().seRagham()} (ریال)",
                                                    style: TextTypography.labelLarge,
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 8),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text(
                                                    "cplife.request_date".tr(),
                                                    style: TextTypography.labelMedium,
                                                  ),
                                                  Text(
                                                    ConvertDate().convertGregorianToJalali(
                                                      ticketsList[index].dateTime.toString(),
                                                    ),
                                                    style: TextTypography.labelLarge,
                                                  ),
                                                ],
                                              ),
                                              // AppButton(
                                              //   customHeight: 45,
                                              //   customWidth: width,
                                              //   title:
                                              //       "cplife.view_details".tr(),
                                              //   onPressed: () {
                                              //     Navigator.push(
                                              //         context,
                                              //         PageTransition(
                                              //             child: const DetailsLoanTicketScreen(),
                                              //             type: PageTransitionType.leftToRight));
                                              //   },
                                              //   buttonType:
                                              //       ButtonType.isSecondary,
                                              //   isSecondaryEnable: true,
                                              //   rightIcon: null,
                                              //   leftIcon: Magicon.eye,
                                              // )
                                            ],
                                          ),
                                        );
                                      })
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

  Container statusTicket(String status) {
    switch (status) {
      case "success":
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 5.5, horizontal: 32),
          decoration: BoxDecoration(
            color: LightTheme.successContainer,
            border: Border.all(color: LightTheme.success),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Text(
            "cplife.approved".tr(),
            style: TextTypography.labelMedium.copyWith(color: LightTheme.success),
          ),
        );

      default:
        return Container(
          child: Text(
            "cplife.approved".tr(),
            style: TextTypography.labelMedium.copyWith(color: LightTheme.success),
          ),
        );
    }
  }
}
