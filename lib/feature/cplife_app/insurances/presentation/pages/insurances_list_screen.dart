import 'package:ios_samx/core/constant/app_colors.dart';
import 'package:ios_samx/core/constant/app_shadow.dart';
import 'package:ios_samx/core/constant/app_style.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:ios_samx/feature/cplife_app/insurances/domain/entities/insurances_list_entites/insurances_list_response_data/items/items.dart';
import 'package:ios_samx/feature/cplife_app/insurances/domain/usecases/insurances_list/param/insurances_param.dart';
import 'package:ios_samx/feature/cplife_app/insurances/presentation/bloc/insurances_bloc/insurances_list_bloc.dart';
import 'package:ios_samx/feature/cplife_app/insurances/presentation/widgets/info_insurance_widget.dart';
import 'package:ios_samx/feature/cplife_app/insurances/presentation/widgets/insurance_loading_item.dart';
import 'package:ios_samx/feature/main_app/dashboard/presentation/pages/dashboard_screen.dart';
import 'package:ios_samx/injection_container.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class InsurancesListScreen extends StatefulWidget {
  const InsurancesListScreen({super.key});

  @override
  State<InsurancesListScreen> createState() => _InsurancesListScreenState();
}

class _InsurancesListScreenState extends State<InsurancesListScreen> {
  late InsurancesListBloc _insurancesListBloc;
  List<InsurancesListResponseDataItems> insurancesList = [];

  int totalPage = 0;
  int currentPage = 1;

  @override
  void initState() {
    insurancesList.clear();
    _insurancesListBloc = sl<InsurancesListBloc>();
    _insurancesListBloc.add(InsurancesListEvent.insurancesListEventCalled(
        InsurancesParam(
            policyholderId: "0", pageNo: currentPage, pageSize: 5)));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    final width = ResponsiveLayout.getDeviceType(context);
    return BlocProvider(
      create: (context) => _insurancesListBloc,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: BlocConsumer<InsurancesListBloc, InsurancesListState>(
          bloc: _insurancesListBloc,
          listener: (context, state) {
            state.maybeWhen(
              loadFailure: (error) {
                showErrorWidget(context, error.code!, error.message!);
              },
              loadSuccess: (insurancesListResponseEntities) {
                setState(() {
                  for (var element in insurancesListResponseEntities
                      .insurancesListResponseData.items) {
                    insurancesList.add(element);
                  }
                  totalPage = insurancesListResponseEntities
                      .insurancesListResponseData.totalPages;
                  currentPage = insurancesListResponseEntities
                      .insurancesListResponseData.currentPage;
                });
              },
              orElse: () {},
            );
          },
          builder: (context, state) {
            final bool loading = state is InsurancesListLoading;
            return Scaffold(
              backgroundColor: AppColors.lightWhite,
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
                    Navigator.of(context).pushAndRemoveUntil(
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
              body: loading
                  ? const InsuranceLoadingList()
                  : Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: width * 0.9,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.centerRight,
                              margin:
                                  const EdgeInsets.only(top: 32, bottom: 16),
                              child: Text(
                                "cplife.my_insurance".tr(),
                                style: AppStyle.size14Weight700
                                    .copyWith(color: Colors.black),
                              ),
                            ),
                            const Divider(
                              thickness: 1,
                              color: AppColors.outlineBright,
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: height * 0.08),
                              height: height * 0.69,
                              child: ListView.builder(
                                  itemCount: insurancesList.length,
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      onTap: () {
                                        showInfoInsuranceWidget(
                                          context: context,
                                          insuranceType: insurancesList[index]
                                              .insuranceType!,
                                          fullPolicyNo: insurancesList[index]
                                              .fullPolicyNo!,
                                          role: insurancesList[index].role!,
                                          policyId: insurancesList[index]
                                              .policyId
                                              .toString(),
                                          issuerName:
                                              insurancesList[index].issuerName!,
                                          issuerCode: insurancesList[index]
                                              .issuerCode
                                              .toString(),
                                          reagentName: insurancesList[index]
                                              .reagentName!,
                                          reagentCode: insurancesList[index]
                                              .reagentCode
                                              .toString(),
                                          beginDate:
                                              insurancesList[index].beginDate!,
                                          endDate:
                                              insurancesList[index].endDate!,
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                        );
                                      },
                                      child: Container(
                                        height: height * 0.1,
                                        width: 50,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [AppShadow.shadow1],
                                            borderRadius:
                                                BorderRadius.circular(16)),
                                        margin: const EdgeInsets.only(top: 16),
                                        child: Row(
                                          children: [
                                            Container(
                                              height: height * 0.1,
                                              width: width * 0.15,
                                              margin: const EdgeInsets.only(
                                                  left: 20),
                                              decoration: const BoxDecoration(
                                                color: AppColors.lightBlue,
                                                borderRadius: BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(16),
                                                    bottomRight:
                                                        Radius.circular(16)),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(12),
                                                child: Image(
                                                    height: 32,
                                                    width: 32,
                                                    fit: BoxFit.contain,
                                                    image: AssetImage(
                                                        iconInsuranceType(
                                                            insurancesList[
                                                                    index]
                                                                .insuranceType!))),
                                              ),
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      "cplife.insurance_type"
                                                          .tr(),
                                                      style: AppStyle
                                                          .size12Weight400,
                                                    ),
                                                    Text(
                                                      insurancesList[index]
                                                          .insuranceType!,
                                                      style: AppStyle
                                                          .size12Weight400Black,
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      "cplife.insurance_number"
                                                          .tr(),
                                                      style: AppStyle
                                                          .size12Weight400,
                                                    ),
                                                    Text(
                                                      insurancesList[index]
                                                          .fullPolicyNo!
                                                          .toPersianDigit(),
                                                      style: AppStyle
                                                          .size12Weight400Black,
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                            const Spacer(),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  left: 10),
                                              child: const Icon(
                                                Icons.arrow_forward_ios,
                                                color: AppColors.primary,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  }),
                            )
                          ],
                        ),
                      ),
                    ),
              bottomSheet: totalPage <= 1 || currentPage == totalPage
                  ? null
                  : Directionality(
                      textDirection: TextDirection.ltr,
                      child: SizedBox(
                        height: height * 0.08,
                        child: Column(
                          children: [
                            Container(
                              height: height * 0.02,
                              decoration: BoxDecoration(
                                color: AppColors.lightWhite,
                                border: Border.all(color: Colors.white),
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.grey.shade300,
                                      AppColors.lightWhite,
                                    ]),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: height * 0.06,
                              color: AppColors.lightWhite,
                              padding: EdgeInsets.only(
                                bottom: height * 0.02,
                              ),
                              child: TextButton.icon(
                                onPressed: () {
                                  if (totalPage > 1 &&
                                      currentPage <= totalPage) {
                                    _insurancesListBloc.add(
                                      InsurancesListEvent
                                          .insurancesListEventCalled(
                                        InsurancesParam(
                                            pageNo: currentPage + 1,
                                            pageSize: 5,
                                            policyholderId: "0"),
                                      ),
                                    );
                                  }
                                },
                                icon: const Icon(
                                  Icons.keyboard_arrow_down,
                                  color: AppColors.costColor,
                                ),
                                label: Text(
                                  "cplife.load_more".tr(),
                                  style: AppStyle.size12Weight600
                                      .copyWith(color: AppColors.costColor),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
            );
          },
        ),
      ),
    );
  }

  String iconInsuranceType(String type) {
    switch (type) {
      case "تشکيل سرمايه":
        return "assets/images/shield-heart.png";
      case "عمر انفرادي":
        return "assets/images/shield-heart.png";
      case "اتومبيل - بدنه":
        return "assets/images/auto_icon.png";
      case "اتومبيل - ثالث":
        return "assets/images/auto_icon.png";
      case "آتش سوزي":
        return "assets/images/fire_icon.png";
      case "درمان":
        return "assets/images/stethoscope_icon.png";
      case "باربری":
        return "assets/images/truck_icon.png";
      case "مسافرتی":
        return "assets/images/bag_icon.png";
      case "مسئولیت":
        return "assets/images/briefcase_icon.png";
      case "کشتي":
        return "assets/images/ship_icon.png";
      case "هواپيما":
        return "assets/images/plane_icon.png";
      case "موبایل":
        return "assets/images/mobile_icon.png";

      default:
        return "assets/images/shield_icon.png";
    }
  }
}
