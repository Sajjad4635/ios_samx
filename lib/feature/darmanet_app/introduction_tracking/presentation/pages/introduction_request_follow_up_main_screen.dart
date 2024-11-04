import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/presentation/widgets/simple_damage_container.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/presentation/pages/introduction_request_screen.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/entities/get_active_by_person_for_voucher/get_active_by_person_for_voucher_response_data/get_active_by_person_for_voucher_response_data.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/presentation/blocs/get_active_by_person_for_voucher/get_active_by_person_for_voucher_bloc.dart';
import 'package:ios_samx/injection_container.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:page_transition/page_transition.dart';
import '../../../../../core/base_widget/app_top_app_bar/app_top_app_bar.dart';
import '../../../../../core/constant/app_style.dart';
import '../../../../../core/constant/strings.dart';
import '../../../../../core/constant/theme/custom_theme.dart';
import '../../../../../core/widgets/simple_rounded_container.dart';
import '../../domain/usecases/get_active_by_person_for_voucher/param/get_active_by_person_for_voucher_param.dart';
import 'introduction_request_follow_up_search_screen.dart';

class IntroductionRequestFollowupMainScreen extends StatefulWidget {
  const IntroductionRequestFollowupMainScreen({super.key});

  @override
  State<IntroductionRequestFollowupMainScreen> createState() => _IntroductionRequestFollowupMainScreenState();
}

class _IntroductionRequestFollowupMainScreenState extends State<IntroductionRequestFollowupMainScreen> {
  String? dropdownValue;

  List titlesOfList = [
    [
      "darmanet.registered_requests".tr(),
      "darmanet.view_and_follow_up_on_referral_requests".tr(),
    ],
  ];

  List<GetActiveByPersonForVoucherResponseData> dropDownList = [];

  List<String> iconsOfList = [
    "assets/images/intro_req.png",
    "assets/images/question.png",
  ];

  late GetActiveByPersonForVoucherBloc _getActiveByPersonForVoucherBloc;

  String customerCompanyId = "";
  String insuranceCompanyId = "";
  String contractId = "";

  @override
  void initState() {
    Box box = Hive.box(Strings.appDBName);
    String? nationalCode = box.get(Strings.nationalId);
    _getActiveByPersonForVoucherBloc = sl<GetActiveByPersonForVoucherBloc>();
    _getActiveByPersonForVoucherBloc.add(GetActiveByPersonForVoucherEvent.getActiveByPersonForVoucherEvent(
        param: GetActiveByPersonForVoucherParam(contractKindList: [0, 3], mainPersonNationalCode: nationalCode!)));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = ResponsiveLayout.getDeviceType(context);
    final colorTheme = context.colorTheme<CustomTheme>();

    return BlocProvider(
      create: (context) => _getActiveByPersonForVoucherBloc,
      child: BlocListener<GetActiveByPersonForVoucherBloc, GetActiveByPersonForVoucherState>(
        bloc: _getActiveByPersonForVoucherBloc,
        listener: (context, state) {
          state.maybeWhen(
              loadFailure: (failure) {
                showErrorWidget(context, failure.code, failure.message!);
              },
              loadSuccess: (getActiveByPersonForVoucherEntities) {
                setState(() {
                  dropDownList = getActiveByPersonForVoucherEntities.getActiveByPersonForVoucherResponseData;
                });
              },
              orElse: () {});
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: const AppTopAppBar(
            title: '',
            isQrCode: false,
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Container(
                    color: colorTheme.bgInverse,
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: width,
                              height: height * 0.18,
                              color: colorTheme.bgInverse,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      height: height * 0.12,
                                      width: width,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage("assets/images/Frame_a.png"),
                                      )),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: SimpleRoundedContainer(
                                      width: width * 0.9,
                                      height: height * 0.12,
                                      bgColor: colorTheme.textVariant,
                                      borderRadius: width * 0.02,
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
                                              title: 'darmanet.insurance_policy'.tr(),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SimpleRoundedContainer(
                          width: width * 0.9,
                          height: height * 0.12,
                          bgColor: colorTheme.primary95,
                          borderRadius: width * 0.02,
                          borderColor: colorTheme.borders,
                          widget: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image(
                                height: height * 0.04,
                                image: const AssetImage("assets/images/plus.png"),
                              ),
                              Text(
                                'darmanet.new_referral_request'.tr(),
                                style: AppStyle.size14Weight600primary,
                              )
                            ],
                          ),
                          onTap: () {
                            if (contractId.isNotEmpty) {
                              Navigator.push(
                                context,
                                PageTransition(
                                  child: IntroductionRequestScreen(
                                    contractId: contractId,
                                    insuranceCompanyId: insuranceCompanyId,
                                    customerCompanyId: customerCompanyId,
                                  ),
                                  type: PageTransitionType.leftToRight,
                                ),
                              );
                            } else {
                              showInfoWidget(
                                context,
                                "darmanet.please_select_a_contract".tr(),
                              );
                            }
                          },
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: colorTheme.lightWhite,
                    width: width,
                    child: ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: titlesOfList.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: SimpleDamageContainer(
                              width: double.infinity,
                              // height: height * 0.08,
                              caption: titlesOfList[index][0],
                              textStyle: AppStyle.size13Weight600darkGray,
                              iconName: iconsOfList[index],
                              bgColor: Colors.transparent,
                              borderRadius: 8.0,
                              iconWidth: width * 0.1,
                              borderColor: Colors.transparent,
                              iconColor: colorTheme.black,
                              subTitle: titlesOfList[index][1],
                              onTap: () {
                                if (index == 0) {
                                  Navigator.push(
                                    context,
                                    PageTransition(
                                      child: const IntroductionRequestFollowUpSearchScreen(),
                                      type: PageTransitionType.leftToRight,
                                    ),
                                  );
                                }
                              },
                            ),
                          );
                        }),
                  )
                ],
              ),
            ),
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
    return BlocBuilder<GetActiveByPersonForVoucherBloc, GetActiveByPersonForVoucherState>(
      bloc: _getActiveByPersonForVoucherBloc,
      builder: (context, state) {
        final colorTheme = context.colorTheme<CustomTheme>();
        final loading = state is GetActiveByPersonForVoucherStateLoading;
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
                dropdownColor: colorTheme.textVariant,
                value: dropdownValue,
                hint: loading
                    ? const CircularProgressIndicator()
                    : Text(
                        "darmanet.please_select_a_contract".tr(),
                        style: AppStyle.size12Weight300.copyWith(color: Colors.white),
                      ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                style: AppStyle.size12Weight300.copyWith(color: Colors.white),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: colorTheme.textVariant,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                  isCollapsed: true,
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: colorTheme.error,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: colorTheme.textVariant,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: colorTheme.textVariant,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: colorTheme.textVariant,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: colorTheme.textVariant,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
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
                    color: colorTheme.textVariant,
                  ),
                ),
                iconEnabledColor: Colors.white,
                items: dropDownList
                    .map(
                      (value) => DropdownMenuItem(
                        value: value,
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Text(
                            value.contractNumberWithCustomer,
                            textDirection: TextDirection.ltr,
                            style: AppStyle.size12Weight600.copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    value as GetActiveByPersonForVoucherResponseData;
                    contractId = value.id;
                    insuranceCompanyId = value.insuranceCompanyId;
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
