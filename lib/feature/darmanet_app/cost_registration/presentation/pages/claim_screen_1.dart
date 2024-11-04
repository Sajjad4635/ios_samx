import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/get_all_cost_desc/get_all_cost_desc_response_data/get_all_cost_desc_response_data.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/get_all_cost_desc/param/get_all_cost_desc_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/get_by_id/param/get_by_id_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/presentation/bloc/get_all_cost_desc/get_all_cost_desc_bloc.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/presentation/bloc/get_by_id/get_by_id_bloc.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/presentation/widgets/damage_detail_widget.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../injection_container.dart';

import '../../../../../core/constant/app_style.dart';
import '../widgets/modal_bottom_sheet_widget.dart';
import 'claim_main_screen.dart';

class ClaimScreen1 extends StatefulWidget {
  final PageController pageController;
  final CostDescriptionIdCallback callback;
  const ClaimScreen1({super.key, required this.pageController, required this.callback});

  @override
  State<ClaimScreen1> createState() => _ClaimScreen1State();
}

class _ClaimScreen1State extends State<ClaimScreen1> {
  late GetAllCostDescBloc getAllCostDescBloc;
  late GetByIdcBloc getByIdcBloc;

  @override
  void initState() {
    getAllCostDescBloc = sl<GetAllCostDescBloc>();
    getByIdcBloc = sl<GetByIdcBloc>();
    getAllCostDescBloc.add(
      const GetAllCostDescEvent.getAllCostDescEventCalled(
        param: GetAllCostDescParam(
          limit: 1000,
          offset: 0,
          searchType: 15,
        ),
      ),
    );
    super.initState();
  }

  List<GetAllCostDescResponseData> allCostDescList = [];
  String text = '';

  List<String> iconsOfList = [
    "assets/images/cal_icon.png",
    "assets/images/amb_icon.png",
    "assets/images/plus_icon.png",
    "assets/images/pill_icon.png",
    "assets/images/tooth_icon.png",
    "assets/images/help_g_icon.png",
    "assets/images/glass_icon.png",
    "assets/images/he_icon.png",
    "assets/images/health_icon.png",
    "assets/images/health_icon.png",
  ];

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();
    double height = MediaQuery.of(context).size.height;
    double width = ResponsiveLayout.getDeviceType(context);

    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getAllCostDescBloc,
          ),
          BlocProvider(
            create: (context) => getAllCostDescBloc,
          ),
        ],
        child: MultiBlocListener(
            listeners: [
              BlocListener<GetAllCostDescBloc, GetAllCostDescState>(
                bloc: getAllCostDescBloc,
                listener: (context, state) {
                  state.maybeWhen(
                    loadFailure: (failure) {
                      showErrorWidget(context, failure.code, failure.message!);
                    },
                    loadSuccess: ($getAllCostDescEntity) {
                      allCostDescList = $getAllCostDescEntity.getAllCostDescResponseData;
                    },
                    orElse: () {},
                  );
                },
              ),
              BlocListener<GetByIdcBloc, GetByIdState>(
                bloc: getByIdcBloc,
                listener: (context, state) {
                  state.maybeWhen(
                    loadFailure: (failure) {
                      showErrorWidget(context, failure.code, failure.message!);
                    },
                    loadSuccess: (getByIdEntity) {
                      showMessage(context, getByIdEntity.description.toString());
                    },
                    orElse: () {},
                  );
                },
              )
            ],
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Container(
                    width: width * 0.9,
                    alignment: AlignmentDirectional.topStart,
                    child: Text(
                      'darmanet.select_expense_description'.tr(),
                      style: AppStyle.size14Weight600,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  BlocBuilder<GetAllCostDescBloc, GetAllCostDescState>(
                    bloc: getAllCostDescBloc,
                    builder: (context, state) {
                      return state is GetAllCostDescStateLoading
                          ? const CircularProgressIndicator()
                          : SizedBox(
                              width: width * 0.9,
                              child: ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: allCostDescList.length,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      widget.callback(allCostDescList[index].text, allCostDescList[index].value);
                                      widget.pageController.animateToPage(1,
                                          duration: const Duration(milliseconds: 1), curve: Curves.linear);
                                    },
                                    child: DamageDetailContainer(
                                      width: double.infinity,
                                      height: height * 0.08,
                                      caption: allCostDescList[index].text,
                                      iconName: 'assets/images/info_circle.png',
                                      bgColor: Colors.white,
                                      borderRadius: 8.0,
                                      iconWidth: width * 0.05,
                                      iconHeight: height * 0.2,
                                      iconColor: colorTheme.primary,
                                      iconTap: () {
                                        getByIdcBloc.add(GetByIdEvent.getByIdEventCalled(
                                            param: GetByIdParam(id: allCostDescList[index].value)));
                                      },
                                      childIconName: iconsOfList[index],
                                      iconSize: width * 0.05,
                                    ),
                                  );
                                },
                              ),
                            );
                    },
                  )
                ],
              ),
            )));
  }
}
