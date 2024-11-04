import 'package:ios_samx/core/constant/app_colors.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/get_active_by_person/get_active_by_person_response_data/get_active_by_person_response_data.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/get_active_by_person/param/get_active_by_person_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/presentation/bloc/get_active_by_person/get_active_by_person_bloc.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/presentation/pages/claim_main_screen.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/presentation/widgets/item_row.dart';
import 'package:ios_samx/feature/darmanet_app/submit_discontent/presentation/pages/submit_discontent_page.dart';
import 'package:ios_samx/feature/main_app/dashboard/presentation/pages/dashboard_screen.dart';
import 'package:camera/camera.dart';
// import 'package:camera/camera.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/constant/app_style.dart';
import '../../../../../core/widgets/alert_dialog.dart';
import '../../../../../core/widgets/simple_rounded_container.dart';
import '../../../../../injection_container.dart';

import '../../../cost_tracking/presentation/pages/claim_followup_screen.dart';

class ClaimScreen extends StatefulWidget {
  const ClaimScreen({super.key});

  @override
  State<ClaimScreen> createState() => _ClaimScreenState();
}

class _ClaimScreenState extends State<ClaimScreen> {
  String? dropdownValue;
  late GetActiveByPersonBloc getActiveByPersonBloc;
  List<GetActiveByPersonResponseData> contractsList = [];
  String customerCompanyId = "";
  String contractId = "";

  @override
  void initState() {
    getActiveByPersonBloc = sl<GetActiveByPersonBloc>();
    getActiveByPersonBloc.add(
      const GetActiveByPersonEvent.getActiveByPersonEventCalled(
        param: GetActiveByPersonParam(personId: null, contractKindList: [0, 1, 3]),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();
    double height = MediaQuery.of(context).size.height;
    double width = ResponsiveLayout.getDeviceType(context);
    return BlocProvider(
      create: (context) => getActiveByPersonBloc,
      child: Scaffold(
        backgroundColor: AppColors.darkGray,
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
              Navigator.pushReplacement(
                  context, PageTransition(child: const DashboardScreen(), type: PageTransitionType.rightToLeft));
            },
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.arrow_back,
                color: colorTheme.white,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: height * 0.18,
                color: AppColors.darkGray,
                child: Stack(
                  children: [
                    Container(
                      height: height * 0.12,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/Frame_a.png"),
                      )),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SimpleRoundedContainer(
                        width: width * 0.9,
                        height: height * 0.12,
                        bgColor: colorTheme.bgInverse,
                        borderRadius: 8.0,
                        borderColor: Colors.transparent,
                        widget: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              dropDown(
                                height: height * 0.15,
                                width: width * 0.9,
                                title: 'darmanet.policy'.tr(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SimpleRoundedContainer(
                width: width * 0.9,
                height: height * 0.12,
                bgColor: colorTheme.bg,
                borderRadius: 8.0,
                borderColor: colorTheme.borders,
                widget: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      height: height * 0.04,
                      image: const AssetImage("assets/images/plus.png"),
                    ),
                    Text(
                      'darmanet.new_expense_registration'.tr(),
                      style: AppStyle.size14Weight600primary,
                    )
                  ],
                ),
                onTap: () async {
                  if (contractId.isEmpty || customerCompanyId.isEmpty) {
                    showErrorWidget(
                      context,
                      101,
                      "darmanet.select_contract".tr(),
                    );
                  } else {
                    if (kIsWeb) {
                      try {
                        String? userAgent = await DeviceInfoPlugin().webBrowserInfo.then((value) => value.userAgent);
                        if (userAgent!.contains("Windows")) {
                          List<CameraDescription> cameras = await availableCameras();
                          Navigator.push(
                              context,
                              PageTransition(
                                child: ClaimMainScreen(
                                  contractId: contractId,
                                  customerCompanyId: customerCompanyId,
                                  cameras: cameras,
                                ),
                                type: PageTransitionType.leftToRight,
                              ));
                        } else {
                          Navigator.push(
                              context,
                              PageTransition(
                                child: ClaimMainScreen(
                                  contractId: contractId,
                                  customerCompanyId: customerCompanyId,
                                  cameras: const [],
                                ),
                                type: PageTransitionType.leftToRight,
                              ));
                        }
                      } catch (e) {
                        showErrorWidget(context, 101, e.toString());
                      }
                    } else {
                      Navigator.push(
                          context,
                          PageTransition(
                            child: ClaimMainScreen(
                              contractId: contractId,
                              customerCompanyId: customerCompanyId,
                              cameras: const [],
                            ),
                            type: PageTransitionType.leftToRight,
                          ));
                    }
                  }
                },
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                width: width,
                height: height,
                color: Colors.white,
                child: Column(
                  children: [
                    ItemRow(
                      height: height,
                      width: width,
                      title: "darmanet.registered_cases".tr(),
                      description: "darmanet.view_and_track_claims".tr(),
                      imagePath: 'assets/images/frame_search_circle.png',
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(child: const ClaimFollowupScreen(), type: PageTransitionType.leftToRight),
                        );
                      },
                    ),
                    ItemRow(
                      height: height,
                      width: width,
                      title: "darmanet.guide_for_claim_submission".tr(),
                      description: "darmanet.view_and_track_claims".tr(),
                      imagePath: 'assets/images/question.png',
                      onTap: () {
                        launchUrl(Uri.parse(
                            "https://www.si24.ir/fa/cdk/func/getFile/file_ctp_id/600/file_id/5845/file_field/file_file/file/HelpDesk-Document-For-BSI-app.pdf/"));
                      },
                    ),
                    ItemRow(
                      height: height,
                      width: width,
                      title: "darmanet.submit_complaint".tr(),
                      description: "darmanet.register_and_track_complaint".tr(),
                      imagePath: 'assets/images/fr.png',
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(child: const SubmitDiscontentScreen(), type: PageTransitionType.leftToRight),
                        );
                      },
                    ),

                    // ItemRow(
                    //   height: height,
                    //   width: width,
                    //   title: "نحوه ارائه مدارک",
                    //   description: "مشاهده و پیگیری خسارت",
                    //   imagePath: 'assets/images/paper.png',
                    //   onTap: () {
                    //     launchUrl(Uri.parse(
                    //         "https://www.si24.ir/fa/cdk/func/getFile/file_ctp_id/600/file_id/5845/file_field/file_file/file/HelpDesk-Document-For-BSI-app.pdf/"));
                    //   },
                    // ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget dropDown({
    required double height,
    required double width,
    required String title,
  }) {
    final colorTheme = context.colorTheme<CustomTheme>();
    return BlocConsumer<GetActiveByPersonBloc, GetActiveByPersonState>(
      bloc: getActiveByPersonBloc,
      listener: (context, state) {
        state.maybeWhen(
          loadFailure: (failure) {
            showErrorWidget(context, failure.code, failure.message!);
          },
          loadSuccess: (getActiveByPersonEntities) {
            setState(() {
              contractsList = getActiveByPersonEntities.getActiveByPersonResponseData;
            });
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        bool loading = state is GetActiveByPersonStateLoading;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppStyle.size12Weight600White,
            ),
            Container(
              width: width,
              margin: const EdgeInsets.only(top: 10),
              child: DropdownButtonFormField(
                value: dropdownValue,
                icon: const Icon(Icons.keyboard_arrow_down_sharp, size: 20, color: Colors.white),
                hint: loading
                    ? const CircularProgressIndicator()
                    : Text(
                        "darmanet.select_your_contract".tr(),
                        style: AppStyle.size13wWeight700,
                      ),
                validator: (value) => value == null ? "darmanet.pick_insurance".tr() : null,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                style: AppStyle.size13wWeight700,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.transparent,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                  isCollapsed: true,
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: colorTheme.error,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                  ),
                  disabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  errorStyle: TextStyle(
                    fontFamily: "Pelak",
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: colorTheme.error,
                  ),
                  hintText: "darmanet.select_your_contract".tr(),
                  hintStyle: TextStyle(
                    fontFamily: "Pelak",
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: colorTheme.solidVariant,
                  ),
                ),
                items: contractsList
                    .map(
                      (value) => DropdownMenuItem(
                        value: value,
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Text(value.contractNumberWithCustomer,
                              textDirection: TextDirection.ltr, style: AppStyle.size13wWeight700),
                        ),
                      ),
                    )
                    .toList(),
                dropdownColor: colorTheme.textVariant,
                onChanged: (value) {
                  setState(() {
                    value as GetActiveByPersonResponseData;
                    contractId = value.id;
                    customerCompanyId = value.customerCompanyId;
                  });
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
