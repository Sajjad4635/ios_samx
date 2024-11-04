import 'package:ios_samx/core/base_widget/app_text_field/index.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/entities/relatives_list/relatives_list_response_data/relative/relative.dart';
import 'package:ios_samx/feature/main_app/relatives/presentation/pages/add_relatives_screen.dart';
import 'package:ios_samx/feature/main_app/relatives/presentation/widgets/relative_type_bottomsheet.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:magicon/magicon.dart';

class RelationFiled extends StatefulWidget {
  final TextEditingController relationController;
  RelativeIdCallback relativeIdCallback;
  RelativeGenderCallback relativeGenderCallback;
  final GlobalKey<FormState> formKey;
  final List<Relative> relativesList;

  RelationFiled(
      {super.key,
      required this.relationController,
      required this.relativeIdCallback,
      required this.relativeGenderCallback,
      required this.relativesList,
      required this.formKey});

  @override
  State<RelationFiled> createState() => _RelationFiledState();
}

class _RelationFiledState extends State<RelationFiled> {
  String selectedRelativeValue = "";
  int gender = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = ResponsiveLayout.getDeviceType(context);
    final colorTheme = context.colorTheme<CustomTheme>();

    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () async {
        await editRelationBottomSheet(colorTheme: colorTheme);
      },
      child: AppTextField(
        customWidth: width * 0.9,
        controller: widget.relationController,
        label: 'main.relation'.tr(),
        helperText: "main.fill_field_is_required".tr(),
        isDropDown: true,
        enable: false,
        autovalidateMode: AutovalidateMode.always,
        validator: (value) {
          if (value!.isEmpty) {
            return "main.fill_field_is_required".tr();
          }
          return null;
        },
        dropDownSuffixIcon: Magicon.angleDownSmall,
      ),
    );
  }

  Future<void> editRelationBottomSheet({
    required CustomTheme colorTheme,
  }) async {
    String relativeTitle = '';
    await showModalBottomSheet(
        context: context,
        backgroundColor: colorTheme.white,
        isScrollControlled: true,
        builder: (context) {
          return RelativeTypeBottomSheet(
            relativeIdCallback: (String relativeId) {
              selectedRelativeValue = relativeId;
              widget.relativeIdCallback(relativeId);
            },
            relativesList: widget.relativesList,
            selectedValue: selectedRelativeValue!,
            changesSubmitOnTap: () {
              for (var relative in widget.relativesList) {
                if (relative.id == selectedRelativeValue) {
                  widget.relationController.text = relative.title;
                  widget.relativeGenderCallback(relative.gender);
                  gender = relative.gender;

                }
              }
              Navigator.of(context).pop();
            },
          );
        }).then((value) {
      widget.formKey.currentState?.validate();
    });
  }
}
