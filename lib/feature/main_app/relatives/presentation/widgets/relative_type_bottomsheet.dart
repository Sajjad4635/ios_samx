import 'package:ios_samx/core/base_widget/app_text_field/index.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/entities/relatives_list/relatives_list_response_data/relative/relative.dart';
import 'package:ios_samx/feature/main_app/relatives/presentation/pages/add_relatives_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:magicon/magicon.dart';

import '../../../../../core/base_widget/app_buttons/app_button/index.dart';

class RelativeTypeBottomSheet extends StatefulWidget {
  final bool? hasButtonLoading;
  RelativeIdCallback relativeIdCallback;
  final void Function() changesSubmitOnTap;
  final List<Relative> relativesList;
  String selectedValue;

  RelativeTypeBottomSheet(
      {super.key,
      required this.relativeIdCallback,
      required this.changesSubmitOnTap,
      this.hasButtonLoading = false,
      required this.relativesList,
      required this.selectedValue});

  @override
  State<RelativeTypeBottomSheet> createState() =>
      _RelativeTypeBottomSheetState();
}

class _RelativeTypeBottomSheetState extends State<RelativeTypeBottomSheet> {
  final TextEditingController searchedRelationController =
      TextEditingController();
  List<Relative> filteredRelativesList = [];

  @override
  void initState() {
    super.initState();
    searchedRelationController.text = '';
    filteredRelativesList = widget.relativesList;
  }

  @override
  Widget build(BuildContext context) {
    final width = ResponsiveLayout.getDeviceType(context);
    final height = MediaQuery.of(context).size.height;
    final colorTheme = context.colorTheme<CustomTheme>();

    return StatefulBuilder(builder: (buildContext, setState) {
      return Container(
        width: width,
        decoration: BoxDecoration(
          color: colorTheme.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Wrap(
          children: [
            Center(
              child: SizedBox(
                width: width * 0.1,
                child: Divider(
                  thickness: 4,
                  color: colorTheme.borders.withOpacity(0.50),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                'main.edit_relation_with_insurer'.tr(),
                style: TextTypography.titleMedium,
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            AppTextField(
              customWidth: width * 0.9,
              controller: searchedRelationController,
              label: 'main.search_in_relations'.tr(),
              onChanged: (String val) {
                setState(() {
                  filteredRelativesList = widget.relativesList.where((item) {
                    return item.title.contains(val);
                  }).toList();
                });
              },
              prefixIcon: Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Icon(
                  Magicon.search,
                  color: colorTheme.textVariant,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: height * 0.02),
              child: SizedBox(
                  height: height * 0.3,
                  child: ListView.builder(
                      itemCount: filteredRelativesList.length,
                      itemBuilder: (buildContext, index) {
                        return Row(
                          children: [
                            Radio<String>(
                              value: filteredRelativesList[index].id,
                              groupValue: widget.selectedValue,
                              activeColor: colorTheme.primary,
                              fillColor:
                                  MaterialStateProperty.all(colorTheme.primary),
                              onChanged: (value) {
                                setState(() {
                                  widget.selectedValue = value!;
                                  widget.relativeIdCallback(value);
                                });
                              },
                            ),
                            Text(
                              filteredRelativesList[index].title,
                              style: TextTypography.titleMedium
                                  .copyWith(fontWeight: FontWeight.w500),
                            ),
                          ],
                        );
                      })),
            ),
            AppButton(
              buttonType: ButtonType.isSecondary,
              title: "main.submit_changes".tr(),
              customHeight: 48,
              customWidth: width * 0.9,
              buttonLoading: widget.hasButtonLoading,
              onPressed: widget.changesSubmitOnTap,
            ),
            SizedBox(
              height: height * 0.08,
            ),
          ],
        ),
      );
    });
  }
}
