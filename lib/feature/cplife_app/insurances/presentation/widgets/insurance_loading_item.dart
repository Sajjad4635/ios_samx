import 'package:ios_samx/core/constant/app_colors.dart';
import 'package:ios_samx/core/constant/app_style.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class InsuranceLoadingList extends StatelessWidget {
  const InsuranceLoadingList({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    final width = ResponsiveLayout.getDeviceType(context);
    return Skeletonizer(
      enabled: true,
      child: Align(
        alignment: Alignment.center,
        child: SizedBox(
           width: width * 0.9,
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerRight,
                margin: const EdgeInsets.only(top: 32, bottom: 16),
                child: Text(
                  "cplife.my_insurance".tr(),
                  style: AppStyle.size14Weight700.copyWith(color: Colors.black),
                ),
              ),
              const Divider(
                thickness: 1,
                color: AppColors.outlineBright,
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) => Skeleton.leaf(
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 12),
                    height: height * 0.1,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
