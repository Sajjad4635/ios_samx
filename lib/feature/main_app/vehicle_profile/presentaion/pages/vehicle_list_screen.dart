import 'dart:ui';

import 'package:ios_samx/core/base_widget/app_alert_dialog/app_alert_dialog.dart';
import 'package:ios_samx/core/base_widget/app_buttons/app_error_button/app_error_button.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/domain/usecase/delete_vehicle/params/delete_vehicle_param.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/domain/usecase/edit_vehicle/params/edit_vehicle_param.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/presentaion/bloc/delete_vehicle/delete_vehicle_bloc.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/presentaion/bloc/edit_vehicle/edit_vehicle_bloc.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/presentaion/bloc/vehicle/vehicle_bloc.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/presentaion/widgets/edit_plate_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ios_samx/core/base_widget/index.dart' show AppFab;
import '../../../../../core/base_widget/app_top_app_bar/app_top_app_bar.dart';
import '../../../../../core/constant/theme/custom_theme.dart';
import '../../../../../core/constant/theme/typography.dart';
import '../../../../../core/responsive/responsive_layout.dart';
import '../../../../../core/usecases/usecase.dart';
import '../../../../../core/widgets/alert_dialog.dart';
import '../../../../../core/widgets/ball_beat_progress_indicator.dart';
import '../../../../../injection_container.dart';
import '../../domain/entities/vehicle/vehicle_response_data/vehicle_response_data.dart';
import '../widgets/empty_vehicle_list_widget.dart';
import '../widgets/vehicle_list_widget.dart';
import 'add_vehicle_screen.dart';

class VehicleListScreen extends StatefulWidget {
  const VehicleListScreen({super.key});

  @override
  State<VehicleListScreen> createState() => _VehicleListScreenState();
}

class _VehicleListScreenState extends State<VehicleListScreen> {
  late VehicleBloc _vehicleBloc;
  late DeleteVehicleBloc _deleteVehicleBloc;
  late EditVehicleBloc _editVehicleBloc;
  List<VehicleResponseData> vehicleResponseData = [];
  TextEditingController editPlateController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _vehicleBloc = sl<VehicleBloc>();
    _deleteVehicleBloc = sl<DeleteVehicleBloc>();
    _editVehicleBloc = sl<EditVehicleBloc>();
    _vehicleBloc.add(VehicleEvent.vehicleEventCalled(noParams: NoParams()));
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = ResponsiveLayout.getDeviceType(context);
    final colorTheme = context.colorTheme<CustomTheme>();
    return SafeArea(
      child: Scaffold(
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
                        vehicleResponseData =
                            vehicleEntities.vehicleResponseData;
                      });
                    },
                    orElse: () {},
                  );
                },
              ),
              BlocListener<DeleteVehicleBloc, DeleteVehicleState>(
                bloc: _deleteVehicleBloc,
                listener: (context, state) {
                  state.maybeWhen(
                    loadFailure: (error) {
                      showErrorWidget(context, error.code!, error.message!);
                    },
                    loadSuccess: (deleteVehicleEntities) {
                      _vehicleBloc.add(VehicleEvent.vehicleEventCalled(
                          noParams: NoParams()));
                    },
                    orElse: () {},
                  );
                },
              ),
              BlocListener<EditVehicleBloc, EditVehicleState>(
                bloc: _editVehicleBloc,
                listener: (context, state) {
                  state.maybeWhen(
                    loadFailure: (error) {
                      showErrorWidget(context, error.code!, error.message!);
                    },
                    loadSuccess: (editVehicleEntities) {
                      _vehicleBloc.add(VehicleEvent.vehicleEventCalled(
                          noParams: NoParams()));
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
                                      padding:
                                          const EdgeInsets.only(right: 15.0),
                                      child: Text(
                                        "${'vehicle.my_vehicle'.tr()}:",
                                        style: (TextTypography.titleMedium
                                            .copyWith(color: colorTheme.black)),
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
                                      return VehicleListWidget(
                                        vehicleName:
                                            vehicleResponseData[index].title,
                                        region: vehicleResponseData[index]
                                            .plaque
                                            .region
                                            .toString(),
                                        letter: vehicleResponseData[index]
                                            .plaque
                                            .letter,
                                        segment1: vehicleResponseData[index]
                                            .plaque
                                            .segment1
                                            .toString(),
                                        segment2: vehicleResponseData[index]
                                            .plaque
                                            .segment2
                                            .toString(),
                                        editWidget: GestureDetector(
                                          onTap: () async {
                                            await editPlateBottomSheet(
                                              colorTheme: colorTheme,
                                              vehicleId:
                                                  vehicleResponseData[index].id,
                                              width: width,
                                              region: vehicleResponseData[index]
                                                  .plaque
                                                  .region
                                                  .toString(),
                                              letter: vehicleResponseData[index]
                                                  .plaque
                                                  .letter,
                                              segment1:
                                                  vehicleResponseData[index]
                                                      .plaque
                                                      .segment1
                                                      .toString(),
                                              segment2:
                                                  vehicleResponseData[index]
                                                      .plaque
                                                      .segment2
                                                      .toString(),
                                              vehicleName:
                                                  vehicleResponseData[index]
                                                      .title,
                                            );
                                          },
                                          child: const Image(
                                            image: AssetImage(
                                              "assets/images/edit_v.png",
                                            ),
                                          ),
                                        ),
                                        deleteWidget: GestureDetector(
                                          onTap: () async {
                                            await deleteDialog(
                                                vehicleId:
                                                    vehicleResponseData[index]
                                                        .id,
                                                colorTheme: colorTheme);
                                          },
                                          child: const Image(
                                            image: AssetImage(
                                              "assets/images/delete_v.png",
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                    separatorBuilder:
                                        (BuildContext context, int index) {
                                      return const Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 15, horizontal: 10),
                                        child: Divider(),
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
                child:  AddVehicleScreen(),
                type: PageTransitionType.leftToRight,
              ),
            );
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }

  Future<void> deleteDialog(
      {required CustomTheme colorTheme, required String vehicleId}) async {
    await showDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return BlocBuilder<DeleteVehicleBloc, DeleteVehicleState>(
            bloc: _deleteVehicleBloc,
            builder: (context, state) {
              return AppAlertDialog(
                hasIcon: true,
                title: "vehicle.delete_confirm".tr(),
                body: "vehicle.delete_msg".tr(),
                icon: const Image(
                  width: 40,
                  image: AssetImage(
                    "assets/images/delete_v_dialog.png",
                  ),
                ),
                buttons: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppErrorButton(
                      title: "vehicle.delete".tr(),
                      customWidth: MediaQuery.of(context).size.width * 0.3,
                      customHeight: 40,
                      onPressed: () {
                        _deleteVehicleBloc.add(
                            DeleteVehicleEvent.deleteVehicleEventCalled(
                                deleteVehicleParam:
                                    DeleteVehicleParam(vehicleId: vehicleId)));
                        Navigator.of(context).pop();
                      },
                      buttonErrorType: ButtonErrorType.isFilledError,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: TextButton(
                        child: Text(
                          "vehicle.refuse".tr(),
                          style: TextTypography.labelLarge
                              .copyWith(color: colorTheme.textVariant),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    )
                  ],
                ), onPressedChBox: (bool? value)
              {  },

              );
            },
          );
        });
  }

  Future<void> editPlateBottomSheet(
      {required CustomTheme colorTheme,
      required double width,
      required String vehicleName,
      required String region,
      required String letter,
      required String segment1,
      required String segment2,
      required String vehicleId}) async {
    await showModalBottomSheet(
        context: context,
        backgroundColor: colorTheme.white,
        isScrollControlled: true,
        builder: (context) {
          return BlocBuilder<EditVehicleBloc, EditVehicleState>(
              bloc: _editVehicleBloc,
              builder: (context, state) {
                return EditPlateWidget(
                  vehicleName: vehicleName,
                  letter: letter,
                  region: region,
                  segment1: segment1,
                  segment2: segment2,
                  editPlateController: editPlateController,
                  submitChangesOnPressed: () {
                    _editVehicleBloc.add(
                        EditVehicleEvent.editVehicleEventCalled(
                            editVehicleParam: EditVehicleParam(
                                vehicleId: vehicleId,
                                title: editPlateController.text)));
                    Navigator.of(context).pop();
                  },
                );
              });
        });
  }
}
