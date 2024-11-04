import 'package:ios_samx/core/base_widget/index.dart' show AppNoData, AppTopAppBar;
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';

import 'package:ios_samx/feature/cplife_app/tickets/presentation/pages/tickets_list_unit_link_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class TicketsInsurancesScreen extends StatelessWidget {
  const TicketsInsurancesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();
    final width = ResponsiveLayout.getDeviceType(context);

    return Scaffold(
      appBar: AppTopAppBar(
        title: 'cplife.my_requests_list'.tr(),
      ),
      body: DefaultTabController(
        length: 3,
        child: Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: width * .9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: const Text('cplife.insurance_type_c',
                          style: TextTypography.titleMedium)
                      .tr(),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: colorTheme.bg,
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 0,
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: TabBar(
                    indicatorColor: colorTheme.primary,
                    indicatorSize: TabBarIndicatorSize.tab,
                    labelColor: colorTheme.bgInverse,
                    unselectedLabelColor: colorTheme.textVariant,
                    labelStyle: TextTypography.labelLarge,
                    tabs: [
                      Tab(
                        text: 'cplife.unit_link'.tr(),
                      ),
                      Tab(
                        text: 'cplife.insurance_life'.tr(),
                      ),
                      Tab(
                        text: 'cplife.old_age_insurance'.tr(),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: TabBarView(children: [
                  const TicketsListUnitLinkScreen(),
                  AppNoData(text: 'cplife.no_submitted_request'.tr()),
                  AppNoData(text: 'cplife.no_submitted_request'.tr()),
                ])),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
