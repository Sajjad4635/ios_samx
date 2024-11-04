import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/feature/main_app/vehicle_inspection/domain/usecase/vehicle_inspection/param/vehicle_inspection_param.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../core/base_widget/app_buttons/app_button/app_button.dart';
import '../../../../../core/base_widget/app_top_app_bar/app_top_app_bar.dart';
import '../../../../../core/constant/strings.dart';
import '../../../../../core/constant/theme/custom_theme.dart';
import '../../../../../core/constant/theme/typography.dart';
import '../../../../../core/extensions/convert_date.dart';
import '../../../../../core/responsive/responsive_layout.dart';
import '../../../../../core/widgets/alert_dialog.dart';
import '../../../../../core/widgets/simple_rounded_container.dart';
import '../../../../../injection_container.dart';
import '../../domain/entities/vehicle_inspection/vehicle_inspection_response_data/vehicle_inspection_response_data.dart';
import '../bloc/vehicle_inspection_bloc/vehicle_inspection_bloc.dart';
import '../widgets/empty_vehicle_inspection.dart';
import '../widgets/vehicle_inspection_list_widget.dart';

class VehicleInspectionStatusScreen extends StatefulWidget {
  const VehicleInspectionStatusScreen({super.key});

  @override
  State<VehicleInspectionStatusScreen> createState() => _VehicleInspectionStatusScreenState();
}

class _VehicleInspectionStatusScreenState extends State<VehicleInspectionStatusScreen> {
  late VehicleInspectionBloc _vehicleInspectionBloc;
  List<VehicleInspectionResponseData> vehicleInspectionResponseData = [];
  late String phoneNo;

  @override
  void initState() {
    super.initState();
    final Box box = Hive.box(Strings.appDBName);
    phoneNo = box.get("phoneNumber");

    _vehicleInspectionBloc = sl<VehicleInspectionBloc>();
    _vehicleInspectionBloc.add(VehicleInspectionEvent.vehicleInspectionEventCalled(
        vehicleInspectionParam:
            VehicleInspectionParam(phoneNumber: phoneNo, token: "cda0e6ed-da4b-4bce-bfc0-ef0d2de2b10d")));
  }

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();
    return BlocProvider(
      create: (context) => _vehicleInspectionBloc,
      child: BlocListener<VehicleInspectionBloc, VehicleInspectionState>(
        bloc: _vehicleInspectionBloc,
        listener: (context, state) {
          state.maybeWhen(
            loadFailure: (failure) {
              showErrorWidget(context, failure.code, failure.message!);
            },
            loadSuccess: (vehicleInspectionEntities) {
              setState(() {
                vehicleInspectionResponseData = vehicleInspectionEntities.vehicleInspectionResponseData;
              });
            },
            orElse: () {},
          );
        },
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: colorTheme.bg,
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(64.0),
              child: AppTopAppBar(
                title: 'main.my_inspection'.tr(),
                isQrCode: false,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            body: BlocBuilder<VehicleInspectionBloc, VehicleInspectionState>(
              bloc: _vehicleInspectionBloc,
              builder: (context, state) {
                final loading = state is VehicleInspectionStateLoading;
                return Skeletonizer(
                  enabled: loading || loading,
                  child: vehicleInspectionResponseData.isEmpty
                      ? const EmptyVehicleInspectionList()
                      : Padding(
                        padding: const EdgeInsets.only(top: 15.0, bottom: 15),
                        child: ListView.separated(
                            shrinkWrap: true,
                            physics: const BouncingScrollPhysics(),
                            itemCount: vehicleInspectionResponseData.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () async {
                                  await detailVehicleInspectionBottomSheet(
                                      colorTheme: colorTheme,
                                      phoneNo: phoneNo.toString().toPersianDigit(),
                                      trackingCode: vehicleInspectionResponseData[index]
                                          .token
                                          .substring(vehicleInspectionResponseData[index].token.length - 6),
                                      status: vehicleInspectionResponseData[index].lastStateTitle!,
                                      desc: vehicleInspectionResponseData[index].description);
                                },
                                child: VehicleInspectionListWidget(
                                  applicantName: vehicleInspectionResponseData[index].fullName == null
                                      ? ""
                                      : vehicleInspectionResponseData[index].fullName.toString(),
                                  inspectionDate: vehicleInspectionResponseData[index].createdDatetime == null
                                      ? ""
                                      : ConvertDate().convertGregorianDateTimeToJalali(
                                          vehicleInspectionResponseData[index].createdDatetime.toString()),
                                  region: vehicleInspectionResponseData[index].region.toString(),
                                  letter: vehicleInspectionResponseData[index].plateAlphabet.toString(),
                                  segment1: vehicleInspectionResponseData[index].segment1.toString(),
                                  segment2: vehicleInspectionResponseData[index].segment2.toString(),
                                  status: vehicleInspectionResponseData[index].lastStateTitle.toString(),
                                  statusColor: getBadgeTitleColor(
                                      status: vehicleInspectionResponseData[index].lastStateTitle.toString(),
                                      context: context),
                                  statusColorBg: getBadgeBgColor(
                                      status: vehicleInspectionResponseData[index].lastStateTitle.toString(),
                                      context: context),
                                ),
                              );
                            },
                            separatorBuilder: (BuildContext context, int index) {
                              return const Padding(
                                padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                                child: SizedBox(),
                              );
                            },
                          ),
                      ),
                );
              },
            )),
      ),
    );
  }

  Future<void> detailVehicleInspectionBottomSheet(
      {required CustomTheme colorTheme,
      required String phoneNo,
      required String trackingCode,
      required String status,
      required String desc}) async {
    await showModalBottomSheet(
      context: context,
      backgroundColor: colorTheme.white,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      builder: (BuildContext context) {
        final colorTheme = context.colorTheme<CustomTheme>();
        final width = ResponsiveLayout.getDeviceType(context);
        final height = MediaQuery.of(context).size.height;
        return SizedBox(
          height: height * 0.5,
          width: width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.06,
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: Text(
                    'main.inspection_detail'.tr(),
                    style: TextTypography.titleMedium.copyWith(color: colorTheme.text),
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'main.phone_no'.tr(),
                      style: TextTypography.labelLarge.copyWith(color: colorTheme.textVariant),
                    ),
                    Text(
                      phoneNo,
                      style: TextTypography.titleSmall.copyWith(color: colorTheme.text),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'main.tracking_Code'.tr(),
                      style: TextTypography.labelLarge.copyWith(color: colorTheme.textVariant),
                    ),
                    Text(
                      trackingCode,
                      style: TextTypography.titleSmall.copyWith(color: colorTheme.text),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'main.status'.tr(),
                      style: TextTypography.labelLarge.copyWith(color: colorTheme.textVariant),
                    ),
                    SimpleRoundedContainer(
                      width: width * 0.4,
                      height: height * 0.05,
                      bgColor: getBadgeBgColor(context: context, status: status),
                      borderColor: getBadgeTitleColor(context: context, status: status),
                      borderRadius: 15.0,
                      widget: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                          child: Text(
                            status,
                            style: TextTypography.labelMedium
                                .copyWith(color: getBadgeTitleColor(context: context, status: status)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'main.desc'.tr(),
                      style: TextTypography.labelLarge.copyWith(color: colorTheme.textVariant),
                    ),
                    Text(
                      desc.isEmpty ? "فاقد توضیحات" : desc,
                      style: TextTypography.titleSmall.copyWith(color: colorTheme.text),
                    ),
                  ],
                ),
                const Spacer(),
                AppButton(
                  customHeight: 25,
                  customWidth: width * 0.9,
                  buttonType: ButtonType.isSecondary,
                  title: 'main.user_see'.tr(),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                SizedBox(
                  height: height * 0.03,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  getBadgeTitleColor({required String status, required BuildContext context}) {
    final colorTheme = context.colorTheme<CustomTheme>();
    switch (status.toLowerCase()) {
      case "صادر شده":
        return colorTheme.onSuccessContainer;
      case "کارشناسی شده":
        return colorTheme.onInfoContainer;
      case "در انتظار کارشناسی":
        return colorTheme.onWarningContainer;
      case "در انتظار رفع نقص":
        return colorTheme.onWarningContainer;
      case "ابطال شده":
        return colorTheme.onErrorContainer;
      case "رد شده":
        return colorTheme.onErrorContainer;

      default:
        return colorTheme.textVariant;
    }
  }

  getBadgeBgColor({required String status, required BuildContext context}) {
    final colorTheme = context.colorTheme<CustomTheme>();
    switch (status.toLowerCase()) {
      case "صادر شده":
        return colorTheme.successContainer;
      case "کارشناسی شده":
        return colorTheme.infoContainer;
      case "در انتظار کارشناسی":
        return colorTheme.onWarning;
      case "در انتظار رفع نقص":
        return colorTheme.onWarning;
      case "ابطال شده":
        return colorTheme.errorContainer;
      case "رد شده":
        return colorTheme.errorContainer;

      default:
        return colorTheme.intComponents;
    }
  }
}
