import 'package:ios_samx/core/constant/theme/light_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/extensions/convert_date.dart';
import 'package:ios_samx/feature/cplife_app/tickets/domain/entities/tickets/tickets_response_data/items/items.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:skeletonizer/skeletonizer.dart';

class TicketItem extends StatelessWidget {
  const TicketItem({
    super.key,
    required this.ticketResponseDataItem,
  });

  final TicketResponseDataItems ticketResponseDataItem;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    // final width = ResponsiveLayout.getDeviceType(context);
    return Container(
      height: height * 0.3,
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: LightTheme.bg,
        border: Border.all(color: LightTheme.borders),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    "cplife.tracking_code".tr(),
                    style: TextTypography.labelMedium,
                  ),
                  Text(
                    (ticketResponseDataItem.id
                        .toString()
                        .toPersianDigit()),
                    style: TextTypography.labelLarge,
                  ),
                ],
              ),
              Skeleton.ignore(child: statusTicket("success"))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "cplife.request_type".tr(),
                style: TextTypography.labelMedium,
              ),
              Text(
                ticketResponseDataItem.deliveryType,
                style: TextTypography.labelLarge,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "cplife.request_date".tr(),
                style: TextTypography.labelMedium,
              ),
              Text(
                ticketResponseDataItem.dateTime.toString(),
                // ConvertDate()
                //     .convertGregorianToJalali(),
                style: TextTypography.labelLarge,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "cplife.last_modified_date".tr(),
                style: TextTypography.labelMedium,
              ),
              Text(
                ConvertDate().convertGregorianToJalali(
                    ticketResponseDataItem.dateTime),
                style: TextTypography.labelLarge,
              ),
            ],
          ),
          // AppButton(
          //   customHeight: 45,
          //   customWidth: width,
          //   title: "cplife.view_details".tr(),
          //   onPressed: () {
          //     Navigator.push(
          //         context,
          //         PageTransition(
          //             child: const DetailsLoanTicketScreen(),
          //             type: PageTransitionType.leftToRight));
          //   },
          //   buttonType: ButtonType.isSecondary,
          //   isSecondaryEnable: false,
          //   rightIcon: null,
          //   leftIcon: Magicon.eye,
          // )
        ],
      ),
    );
  }
}

Widget statusTicket(String status) {
  switch (status) {
    case "success":
      return Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: LightTheme.successContainer,
          border: Border.all(color: LightTheme.success),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Text(
          "cplife.approved".tr(),
          style: TextTypography.labelMedium.copyWith(color: LightTheme.success),
        ),
      );

    default:
      return Text(
        "cplife.approved".tr(),
        style: TextTypography.labelMedium.copyWith(color: LightTheme.success),
      );
  }
}
