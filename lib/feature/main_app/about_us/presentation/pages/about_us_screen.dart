import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:magicon/magicon.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

import '../../../../../core/constant/app_style.dart';
import '../../../../../core/constant/theme/custom_theme.dart';
import '../../../../../core/constant/theme/typography.dart';
import '../../../../../core/responsive/responsive_layout.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();
    final width = ResponsiveLayout.getDeviceType(context);
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorTheme.bgInverse,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'main.about_app'.tr(),
          style: AppStyle.size18Weight700,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.arrow_back,
              color: colorTheme.layer,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: width * 0.95,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/mobile_user_rafiki_2.png",
                  height: height * 0.3,
                  width: height * 0.3,
                ),

                Align(
                    alignment: Alignment.centerRight,
                    child: Text("main.our_story_title".tr(), style: TextTypography.titleLarge,)),
                const SizedBox(height: 8,),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text("main.our_story_content".tr().toPersianDigit(), style: TextTypography.bodySmall,),
                ),
                SizedBox(height: height * 0.04,),

                Align(
                    alignment: Alignment.centerRight,
                    child: Text("main.our_mission_title".tr(), style: TextTypography.titleLarge,)),
                const SizedBox(height: 8,),
                Align(
                    alignment: Alignment.centerRight,
                    child: Text("main.our_mission_content".tr().toPersianDigit(), style: TextTypography.bodySmall,)),
                const SizedBox(height: 8,),

                SizedBox(height: height * 0.04,),

                Align(
                    alignment: Alignment.centerRight,
                    child: Text("main.our_goal_title".tr(), style: TextTypography.titleLarge,)),
                const SizedBox(height: 8,),
                Align(
                    alignment: Alignment.centerRight,
                    child: Text("main.our_goal_content".tr(), style: TextTypography.bodySmall,)),
                const SizedBox(height: 8,),
                SizedBox(height: height * 0.04,),

                Align(
                    alignment: Alignment.centerRight,
                    child: Text("main.our_values_title".tr(), style: TextTypography.titleLarge,)),
                const SizedBox(height: 12,),
                Align(
                    alignment: Alignment.centerRight,
                    child: Text( '    \u2022   ${"main.our_values_content_1".tr()}',
                      style: TextTypography.bodySmall,
                    )),
                const SizedBox(height: 8,),
                Align(
                    alignment: Alignment.centerRight,
                    child: Text('    \u2022   ${"main.our_values_content_2".tr()}', style: TextTypography.bodySmall,)),
                const SizedBox(height: 8,),
                Align(
                    alignment: Alignment.centerRight,
                    child: Text('    \u2022   ${"main.our_values_content_3".tr()}', style: TextTypography.bodySmall,)),
                const SizedBox(height: 8,),
                Align(
                    alignment: Alignment.centerRight,
                    child: Text('    \u2022   ${"main.our_values_content_4".tr()}', style: TextTypography.bodySmall,)),
                const SizedBox(height: 8,),
                Align(
                    alignment: Alignment.centerRight,
                    child: Text('    \u2022   ${"main.our_values_content_5".tr()}', style: TextTypography.bodySmall,)),
                const SizedBox(height: 8,),

                SizedBox(height: height * 0.04,),

                Align(
                    alignment: Alignment.centerRight,
                    child: Text("main.our_work_time_title".tr(), style: TextTypography.titleLarge,)),
                const SizedBox(height: 8,),
                Align(
                    alignment: Alignment.centerRight,
                    child: Text("main.our_work_time_content".tr().toPersianDigit(), style: TextTypography.bodySmall,)),
                //  const SizedBox(height: 8,),

                SizedBox(height: height * 0.03,),
                Container(
                  height: height * 0.08,
                  decoration: BoxDecoration(
                    color: colorTheme.layer,
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 8,),
                      Icon(Magicon.phone, color: colorTheme.primary,),
                      const SizedBox(width: 4,),
                      Text("main.call_number_title".tr(), style: TextTypography.labelMedium,),
                      const SizedBox(width: 8,),
                      Text("main.call_number_content".tr().toPersianDigit(), style: TextTypography.labelLarge,),
                    ],
                  ),
                ),
                const SizedBox(height: 8,),
                Container(
                  height: height * 0.08,
                    decoration: BoxDecoration(
                      color: colorTheme.layer ,
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                    ),
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(width: 8,),
                        Icon(Magicon.locationPin, color: colorTheme.primary,),
                        const SizedBox(width: 4,),
                        Text("main.address_title".tr(), style:  TextTypography.labelMedium),
                        const SizedBox(width: 8),
                        Expanded(child: Text("main.address_content".tr().toPersianDigit(), style:  TextTypography.labelLarge)),
                      ],
                    ),
                  ),
                ) ,
                const SizedBox(height: 8,),
                Container(
                  height: height * 0.08,
                  decoration: BoxDecoration(
                    color: colorTheme.layer,
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 8,),
                      Icon(Magicon.locationCrosshairs, color: colorTheme.primary,),
                      const SizedBox(width: 4,),
                      Text("main.post_box_title".tr(), style: TextTypography.labelMedium,),
                      const SizedBox(width: 8,),
                      Text("main.post_box_content".tr().toPersianDigit(), style: TextTypography.labelLarge,),
                    ],
                  ),
                ),
                const SizedBox(height: 24,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
