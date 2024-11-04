import 'package:ios_samx/core/constant/app_style.dart';
import 'package:ios_samx/core/widgets/button_primary.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

Future showInfoInsuranceWidget({
  required BuildContext context,
  required final String insuranceType,
  required final String fullPolicyNo,
  required final String role,
  required final String policyId,
  required final String issuerName,
  required final String issuerCode,
  required final String reagentName,
  required final String reagentCode,
  required final String beginDate,
  required final String endDate,
  required final void Function() onPressed,
}) {
  return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      builder: (context) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.8,
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.05,
              left: MediaQuery.of(context).size.width * 0.05,
              right: MediaQuery.of(context).size.width * 0.05,
            ),
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(
                            bottom: MediaQuery.of(context).size.width * 0.05),
                        child: Text(
                          "cplife.insurance_details".tr(),
                          style:
                          AppStyle.size13wWeight700.copyWith(color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "cplife.insurance_name".tr(),
                              style: AppStyle.size13Weight400,
                            ),
                            Text(
                              insuranceType,
                              style: AppStyle.size13Weight600,
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "cplife.insurance_number".tr(),
                              style: AppStyle.size13Weight400,
                            ),
                            Text(
                              fullPolicyNo.toPersianDigit(),
                              style: AppStyle.size13Weight600,
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "cplife.insurance_role".tr(),
                              style: AppStyle.size13Weight400,
                            ),
                            Text(
                              role,
                              style: AppStyle.size13Weight600,
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "cplife.insurer_code".tr(),
                              style: AppStyle.size13Weight400,
                            ),
                            Text(
                              policyId.toPersianDigit(),
                              style: AppStyle.size13Weight600,
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "cplife.issuing_unit".tr(),
                              style: AppStyle.size13Weight400,
                            ),
                            Text(
                              "$issuerName $issuerCode".toPersianDigit(),
                              style: AppStyle.size13Weight600,
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "cplife.representative_unit".tr(),
                              style: AppStyle.size13Weight400,
                            ),
                            Text(
                              "$reagentName $reagentCode".toPersianDigit(),
                              style: AppStyle.size13Weight600,
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "cplife.start_date".tr(),
                              style: AppStyle.size13Weight400,
                            ),
                            Text(
                              beginDate.toPersianDigit(),
                              style: AppStyle.size13Weight600,
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "cplife.expire_date".tr(),
                              style: AppStyle.size13Weight400,
                            ),
                            Text(
                              endDate.toPersianDigit(),
                              style: AppStyle.size13Weight600,
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      ButtonPrimary(
                        title: "cplife.read".tr(),
                        customHeight: 48,
                        customWidth: MediaQuery.of(context).size.width * 0.9,
                        buttonLoading: false,
                        onPressed: onPressed,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.05,
                      ),
                    ],
                  ),
                )

              ],
            ),
          ),
        );
      });
}
