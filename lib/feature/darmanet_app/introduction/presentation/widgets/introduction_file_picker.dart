
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/core/widgets/simple_rounded_container.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constant/app_style.dart';
import '../../../../../core/constant/theme/custom_theme.dart';

class IntroductionFilePickerWidget extends StatefulWidget {
  final String? caption;
  final double? iconWidth;
  final double? iconHeight;
  final double? widthA;
  final double? heightA;
  final String? iconName;
  final bool? loading;
  final String? buttonTitle;
  final void Function()? onTap;
  final Widget? uploadWidget;

  const IntroductionFilePickerWidget({
    super.key,
    this.caption,
    this.uploadWidget,
    this.iconWidth,
    this.iconHeight,
    this.iconName,
    this.widthA,
    this.heightA,
    this.onTap,
    this.loading,
    this.buttonTitle,
  });

  @override
  State<IntroductionFilePickerWidget> createState() =>
      _IntroductionFilePickerWidgetState();
}

class _IntroductionFilePickerWidgetState
    extends State<IntroductionFilePickerWidget> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = ResponsiveLayout.getDeviceType(context);
    final colorTheme = context.colorTheme<CustomTheme>();

    return Column(
      children: [
        SizedBox(
          height: widget.heightA,
          width: widget.widthA,
          child: DottedBorder(
              dashPattern: const [5, 5, 5, 5],
              borderType: BorderType.RRect,
              color: colorTheme.primary80,
              strokeWidth: 1,
              radius: const Radius.circular(12),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 9.0, vertical: 13.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      width: 20,
                      height: 20,
                      image: AssetImage(
                        widget.iconName!,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(start: 8.0),
                      child: SizedBox(
                        width: width * 0.5,
                        child: Text(
                          widget.caption!,
                          style: AppStyle.size12Weight600,
                        ),
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: SimpleRoundedContainer(
                        width: width * 0.2,
                        height: height * 0.04,
                        bgColor: Colors.white,
                        borderRadius: 4.0,
                        borderColor: colorTheme.primary,
                        widget: Center(
                          child: widget.loading!
                              ? Text(
                                  widget.buttonTitle == null
                                      ? 'darmanet.loading'.tr()
                                      : 'darmanet.downloading'.tr(),
                                  style: AppStyle.size10Weight600primary,
                                )
                              : Text(
                                  widget.buttonTitle ??
                                      'darmanet.upload_file'.tr(),
                                  style: AppStyle.size10Weight600primary,
                                ),
                        ),
                      ),
                    )
                  ],
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            'darmanet.allowed_formats'.tr(),
            style: AppStyle.size11Weight400,
          ),
        ),
      ],
    );
  }
}
