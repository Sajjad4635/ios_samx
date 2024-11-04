import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/feature/darmanet_app/health_care_centers/presentation/widgets/custom_expandable_list.dart';
import 'package:ios_samx/feature/main_app/agents_branches/presentation/widgets/item_details.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import '../../../../../core/constant/app_style.dart';
import '../pages/agents_and_branches_screen.dart';

class CustomExpandableList extends StatefulWidget {
  const CustomExpandableList({required this.infoList, super.key});

  final List<ItemInfo> infoList;

  @override
  State<CustomExpandableList> createState() => _CustomExpandableListState();
}

class _CustomExpandableListState extends State<CustomExpandableList> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final colorTheme = context.colorTheme<CustomTheme>();

    return ExpansionPanelList.radio(
      expansionCallback: (panelIndex, isExpanded) {
        setState(() {
          widget.infoList[panelIndex].isExpanded = !isExpanded;
        });
      },
      children: widget.infoList.map(
        (item) {
          return ExpansionPanelRadio(
            value: item.id,
            headerBuilder: (context, isExpanded) {
              return Row(
                children: [
                  const SizedBox(
                    width: 16,
                  ),
                  Text(
                    item.id.toString().toPersianDigit(),
                    style: AppStyle.size14Weight600
                        .copyWith(color: colorTheme.solidVariant),
                  ),
                  const Spacer(flex: 1),
                  SizedBox(
                    width: width * 0.65,
                    child: Text(
                      item.unitName.toPersianDigit(),
                      style: AppStyle.size14Weight600
                          .copyWith(color: colorTheme.solidVariant),
                    ),
                  ),
                  const Spacer(
                    flex: 5,
                  ),
                ],
              );
            },
            body: Container(
              height: height / 3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: colorTheme.primaryContainer),
              child: Column(
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  ItemDetails(title: "main.center_type".tr(), value: item.kind ),
                  const Spacer(),
                  ItemDetails(
                      title: "main.state_city".tr(),
                      value: "${item.stateName}/${item.cityName}"),
                  const Spacer(),
                  ItemDetails(
                      title: "main.description".tr(),
                      value:
                          "${"main.address".tr()}:" "\n${convertOneLineToMultiLines(item.address)}\n${"main.phone".tr()}: ${item.phone}\n${"main.fax".tr()}: ${item.fax}\n${"main.email".tr()}: \n ${item.email}"),
                ],
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}

//------------------------------------------------------------------------------