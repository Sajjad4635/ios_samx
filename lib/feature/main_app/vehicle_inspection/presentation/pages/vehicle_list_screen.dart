import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/feature/main_app/vehicle_inspection/presentation/pages/vehicle_inspection_type_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';

import '../../../../../core/base_widget/app_fab/app_fab.dart';
import '../../../../../core/base_widget/app_top_app_bar/app_top_app_bar.dart';
import '../../../../../core/constant/theme/custom_theme.dart';
import '../../../../../core/constant/theme/typography.dart';
import '../../../../../core/responsive/responsive_layout.dart';
import '../../../../../core/usecases/usecase.dart';
import '../../../../../core/widgets/alert_dialog.dart';
import '../../../../../core/widgets/ball_beat_progress_indicator.dart';
import '../../../../../injection_container.dart';
import '../../../vehicle_profile/domain/entities/vehicle/vehicle_response_data/vehicle_response_data.dart';
import '../../../vehicle_profile/presentaion/bloc/vehicle/vehicle_bloc.dart';
import '../../../vehicle_profile/presentaion/pages/add_vehicle_screen.dart';
import '../../../vehicle_profile/presentaion/widgets/empty_vehicle_list_widget.dart';
import '../widgets/owner_vehicle_list_widget.dart';

class VehicleListScreen extends StatefulWidget {
  const VehicleListScreen({super.key});

  @override
  State<VehicleListScreen> createState() => _VehicleListScreenState();
}

class _VehicleListScreenState extends State<VehicleListScreen> {
  late VehicleBloc _vehicleBloc;
  List<VehicleResponseData> vehicleResponseData = [];

  @override
  void initState() {
    super.initState();
    _vehicleBloc = sl<VehicleBloc>();
    _vehicleBloc.add(VehicleEvent.vehicleEventCalled(noParams: NoParams()));
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = ResponsiveLayout.getDeviceType(context);
    final colorTheme = context.colorTheme<CustomTheme>();
    return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: colorTheme.bg,
          appBar: PreferredSize(
    preferredSize: const Size.fromHeight(64.0),
    child: AppTopAppBar(
      title: 'vehicle.my_vehicle'.tr(),
      isQrCode: false,
      onPressed: () {
        Navigator.pop(context);
      },
    ),
          ),
          body: MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => _vehicleBloc,
      ),
    ],
    child: MultiBlocListener(
      listeners: [
        BlocListener<VehicleBloc, VehicleState>(
          bloc: _vehicleBloc,
          listener: (context, state) {
            state.maybeWhen(
              loadFailure: (error) {
                showErrorWidget(context, error.code!, error.message!);
              },
              loadSuccess: (vehicleEntities) {
                setState(() {
                  vehicleResponseData = vehicleEntities.vehicleResponseData;
                });
              },
              orElse: () {},
            );
          },
        ),
      ],
      child: BlocBuilder<VehicleBloc, VehicleState>(
        bloc: _vehicleBloc,
        builder: (context, state) {
          final loading = state is VehicleStateLoading;
          return loading
              ? Container(
                  alignment: Alignment.center,
                  child: BallBeatProgressIndicator(
                    size: width * 0.09,
                    color: colorTheme.primary,
                  ))
              : vehicleResponseData.isEmpty
                  ? const EmptyVehicleList()
                  : Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        width: width,
                        child: CustomScrollView(
                          slivers: [
                            SliverToBoxAdapter(
                              child: SizedBox(
                                height: height * 0.03,
                              ),
                            ),
                            SliverToBoxAdapter(
                              child: Container(
                                alignment: Alignment.centerRight,
                                padding: const EdgeInsets.only(right: 15.0),
                                child: Text(
                                  'vehicle.select_your_vehicle'.tr(),
                                  style: (TextTypography.titleMedium.copyWith(color: colorTheme.black)),
                                ),
                              ),
                            ),
                            SliverToBoxAdapter(
                              child: SizedBox(
                                height: height * 0.03,
                              ),
                            ),
                            SliverList.separated(
                              itemCount: vehicleResponseData.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                      context,
                                      PageTransition(
                                        child: VehicleInspectionTypeScreen(
                                          plateAlphabet: vehicleResponseData[index].plaque.letter,
                                          region: vehicleResponseData[index].plaque.region.toString(),
                                          segment1: vehicleResponseData[index].plaque.segment1.toString(),
                                          segment2: vehicleResponseData[index].plaque.segment2.toString(),
                                        ),
                                        type: PageTransitionType.leftToRight,
                                      ),
                                    );
                                  },
                                  child: OwnerVehicleListWidget(
                                    vehicleName: vehicleResponseData[index].title,
                                    region: vehicleResponseData[index].plaque.region.toString(),
                                    letter: vehicleResponseData[index].plaque.letter,
                                    segment1: vehicleResponseData[index].plaque.segment1.toString(),
                                    segment2: vehicleResponseData[index].plaque.segment2.toString(),
                                  ),
                                );
                              },
                              separatorBuilder: (BuildContext context, int index) {
                                return const SizedBox(
                                  height: 25,
                                );
                              },
                            ),
                            SliverToBoxAdapter(
                              child: SizedBox(
                                height: height * 0.03,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
        },
      ),
    ),
          ),
          floatingActionButton: AppFab(
    isTitle: true,
    isPrimary: true,
    title: "vehicle.new_vehicle".tr(),
    icon: Icons.add,
    customWidth: width * 0.37,
    customHeight: height * 0.07,
    onPressed: () {
      Navigator.pushReplacement(
        context,
        PageTransition(
          child: AddVehicleScreen(),
          type: PageTransitionType.leftToRight,
        ),
      );
    },
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        );
  }
}
