import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/deposit_result/params/deposit_result_params.dart';
import 'package:ios_samx/feature/main_app/wallet/presentation/bloc/deposit_result/deposit_result_bloc.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import '../../../../../../core/constant/app_colors.dart';
import '../../../../../../core/constant/app_style.dart';
import '../../../../../../core/constant/theme/light_theme.dart';
import '../../../../../../core/constant/theme/typography.dart';
import '../../../../../../core/responsive/responsive_layout.dart';
import '../../../../../../core/widgets/simple_rounded_container.dart';
import '../../../../../../injection_container.dart';

class WalletDepositResultScreen extends StatefulWidget {
  // final String isSuccess ; // its not important
  final String transactionId;

  const WalletDepositResultScreen({
    super.key,
    required this.transactionId,
  });

  @override
  State<WalletDepositResultScreen> createState() => _WalletDepositResultScreenState();
}

class _WalletDepositResultScreenState extends State<WalletDepositResultScreen> {
  bool status = false;
  String date = "";
  String time = "";
  String? pan;

  String amount = "";
  String? traceId;

  late DepositResultBloc _depositResultBloc;

  @override
  void initState() {
    _depositResultBloc = sl<DepositResultBloc>();
    _depositResultBloc
        .add(DepositResultEvent.depositResultEventCalled(DepositResultParam(transactionId: widget.transactionId)));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    final width = ResponsiveLayout.getDeviceType(context);
    return BlocProvider(
      create: (context) => _depositResultBloc,
      child: BlocListener<DepositResultBloc, DepositResultState>(
        bloc: _depositResultBloc,
        listener: (context, state) {
          state.maybeWhen(
            loadFailure: (failure) {
              showErrorWidget(context, failure.code, failure.message!);
            },
            loadSuccess: (entities) {
              final response = entities.responseData;
              setState(() {
                status = response.isSuccess;
                date = response.date;

                /// change :"04/08/2024 00:00:00" to 2024/04/08
                List<String> dt = date.split(" ");
                List<String> ymd = dt[0].split("/");
                date = "${ymd[2]}/${ymd[0]}/${ymd[1]}";

                time = response.time;
                time = time.split(".").first;
                pan = response.securePan ?? "درج نشده";
                amount = response.amount.toString().toPersianDigit();
                traceId = response.traceId ?? "";
              });
            },
            orElse: () {},
          );
        },
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            backgroundColor: AppColors.lightWhite,
            appBar: AppBar(
              backgroundColor: AppColors.darkGray,
              elevation: 0,
              centerTitle: true,
              title: Text(
                'main.transaction_detail'.tr(),
                style: AppStyle.size18wWeight700,
              ),
              leading: IconButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(context, "/dashboard", (route) => false);
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
            body: BlocConsumer<DepositResultBloc, DepositResultState>(
              bloc: _depositResultBloc,
              listener: (context, state) {},
              builder: (context, state) {
                final bool loading = state is DepositResultStateLoading;

                return SizedBox(
                  width: double.infinity,
                  child: loading
                      ? Container(
                          alignment: Alignment.center,
                          child: const CircularProgressIndicator(),
                        )
                      : Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: height * 0.05,
                                ),
                                Text(
                                  'main.deposit_amount'.tr(),
                                  style: TextTypography.labelLarge.copyWith(color: LightTheme.textVariant),
                                ),
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                Text(
                                  "${amount.toPersianDigit().seRagham()} ريال",
                                  style: TextTypography.headLineLarge.copyWith(color: LightTheme.text),
                                ),
                                SizedBox(
                                  height: height * 0.03,
                                ),
                                SimpleRoundedContainer(
                                    width: width * 0.4,
                                    height: height * 0.06,
                                    bgColor: status ? LightTheme.success : LightTheme.error,
                                    borderRadius: 56.0,
                                    borderColor: AppColors.borderColor,
                                    onTap: () {},
                                    widget: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        status
                                            ? const Icon(
                                                Icons.check_circle_outline,
                                                color: Colors.white,
                                              )
                                            : const Icon(
                                                Icons.cancel_outlined,
                                                color: Colors.white,
                                              ),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 8.0),
                                          child: Text(
                                            status ? "main.success_deposit".tr() : "main.failed_deposit".tr(),
                                            textDirection: TextDirection.ltr,
                                            style: TextTypography.labelLarge.copyWith(color: LightTheme.onSuccess),
                                          ),
                                        ),
                                      ],
                                    )),
                                SizedBox(
                                  height: height * 0.03,
                                ),
                                SizedBox(
                                    width: width * 0.9, child: const Divider(thickness: 1, color: LightTheme.borders)),
                                // SizedBox(height: height * 0.02,),
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                  height: height * 0.25,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                                    child: Column(
                                      children: [
                                        const Spacer(),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'main.time'.tr(),
                                              style: TextTypography.labelLarge.copyWith(color: LightTheme.textVariant),
                                            ),
                                            Text("${time.toPersianDigit()} , ${date.toPersianDate().toPersianDigit()}",
                                                textDirection: TextDirection.ltr,
                                                style: TextTypography.titleSmall.copyWith(color: LightTheme.text)),
                                          ],
                                        ),
                                        const Spacer(),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'main.origin_card'.tr(),
                                              style: TextTypography.labelLarge.copyWith(color: LightTheme.textVariant),
                                            ),
                                            Text(status ? pan!.toPersianDigit() : "درج نشده",
                                                style: TextTypography.titleSmall.copyWith(color: LightTheme.text)),
                                          ],
                                        ),
                                        const Spacer(),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "main.issue_tracking".tr(),
                                              style: TextTypography.labelLarge.copyWith(color: LightTheme.textVariant),
                                            ),
                                            Text(
                                                status ? traceId.toString().toPersianDigit() : "main.not_included".tr(),
                                                style: TextTypography.titleSmall.copyWith(color: LightTheme.text)),
                                          ],
                                        ),
                                        const Spacer(),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                const Spacer(),
                                SizedBox(
                                  height: height * 0.02,
                                ),
                              ],
                            ),
                          ),
                        ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
