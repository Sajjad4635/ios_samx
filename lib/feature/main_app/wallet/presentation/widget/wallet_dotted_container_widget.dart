import 'package:ios_samx/core/constant/app_colors.dart';
import 'package:ios_samx/core/constant/app_style.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class WalletDottedContainerWidget extends StatelessWidget {
  const WalletDottedContainerWidget({
    required this.width,
    required this.height,
    required this.iconImage,

    super.key,
    this.caption,
  });

  final String? caption;
  final double width;
  final double height;
  final Widget iconImage;

  @override
  Widget build(BuildContext context) {
    //! TODO : remove app color here
    return SizedBox(
      height: height,
      width: width,
      child: DottedBorder(
          dashPattern: const [5, 5, 5, 5],
          borderType: BorderType.RRect,
          color: AppColors.lightBlue,
          strokeWidth: 1,
          radius: const Radius.circular(12),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Skeleton.keep(
                  child: iconImage
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 8.0),
                  child: Text(
                    caption!,
                    style: AppStyle.size12Weight600White,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
