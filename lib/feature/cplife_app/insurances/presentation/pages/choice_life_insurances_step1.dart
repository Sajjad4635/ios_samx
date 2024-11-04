import 'package:ios_samx/core/constant/app_colors.dart';
import 'package:ios_samx/core/constant/app_style.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:ios_samx/core/widgets/button_primary.dart';
import 'package:ios_samx/feature/cplife_app/insurances/domain/entities/life_insurances/life_insurances_response_data/life_insurances_response_data.dart';
import 'package:ios_samx/feature/cplife_app/insurances/presentation/bloc/life_insurances/life_insurances_bloc.dart';
import 'package:ios_samx/feature/cplife_app/insurances/presentation/pages/life_insurances_list_screen.dart';
import 'package:ios_samx/injection_container.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magicon/magicon.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class ChoiceLifeInsurancesStep1 extends StatefulWidget {
  final ChoiceLifeInsuranceStep1Callback choiceLifeInsuranceStep1Callback;
  const ChoiceLifeInsurancesStep1({super.key, required this.choiceLifeInsuranceStep1Callback});

  @override
  State<ChoiceLifeInsurancesStep1> createState() => _ChoiceLifeInsurancesStep1State();
}

class _ChoiceLifeInsurancesStep1State extends State<ChoiceLifeInsurancesStep1> {
  String issuerCode = "";
  String agentCode = "";
  String beginDate = "";
  String endDate = "";
  String insuranceYear = "";
  String insuranceName = "";
  bool isUnitLinked = false;
  final _formKey = GlobalKey<FormState>();

  String? dropdownValue;

  bool isVisible = false;

  List<LifeInsurancesResponseData> insList = [];

  late LifeInsurancesBloc _lifeInsurancesBloc;

  @override
  void initState() {
    _lifeInsurancesBloc = sl<LifeInsurancesBloc>();
    _lifeInsurancesBloc.add(LifeInsurancesEvent.lifeInsurancesEventCalled(NoParams()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();
    double height = MediaQuery.of(context).size.height;
    double width = ResponsiveLayout.getDeviceType(context);

    final items = [
      {
        'title': 'cplife.issuing_unit_code'.tr(),
        'value': "$issuerCode - $insuranceName",
        'icon': Magicon.buildingCoins
      },
      {
        'title': 'cplife.identification_unit_code'.tr(),
        'value': "$agentCode - $insuranceName",
        'icon': Magicon.buildings
      },
      {'title': 'cplife.policy_start_date'.tr(), 'value': beginDate, 'icon': Magicon.calendar},
      {'title': 'cplife.policy_expire_date'.tr(), 'value': endDate, 'icon': Magicon.calendar},
      {'title': 'cplife.insurance_year'.tr(), 'value': insuranceYear, 'icon': Magicon.hourglass},
    ];

    return BlocProvider(
      create: (context) => _lifeInsurancesBloc,
      child: BlocListener<LifeInsurancesBloc, LifeInsurancesState>(
        bloc: _lifeInsurancesBloc,
        listener: (context, state) {
          state.maybeWhen(
            loadFailure: (failure) {
              showErrorWidget(context, failure.code, failure.message!);
            },
            loadSuccess: (lifeInsurancesResponseEntities) {
              setState(() {
                insList = lifeInsurancesResponseEntities.lifeInsurancesResponseData;
              });
            },
            orElse: () {},
          );
        },
        child: Align(
          alignment: Alignment.topCenter,
          child: SizedBox(
            width: width * 0.9,
            height: height * 1,
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Container(
                    width: width * 0.9,
                    alignment: Alignment.topRight,
                    child: Text(
                      'cplife.select_insurance'.tr(),
                      style: TextTypography.titleSmall,
                    ),
                  ),
                  Container(
                    width: width * 0.9,
                    alignment: Alignment.topRight,
                    margin: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      'cplife.select_policy'.tr(),
                      style: TextTypography.bodySmall.copyWith(color: colorTheme.textVariant),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  dropDown(
                    height: height * 0.15,
                    width: width * 0.9,
                    title: 'cplife.policy'.tr(),
                  ),
                  Visibility(
                    visible: isVisible,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: height * 0.04),
                        const Text(
                          "اطلاعات بیمه نامه",
                          style: TextTypography.titleSmall,
                        ),
                        const SizedBox(height: 24),
                        ...items
                            .map(
                              (item) => ItemRow(
                                  value: item['value'] as String,
                                  title: item['title'] as String,
                                  icon: item['icon'] as IconData),
                            )
                            .toList(),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: ButtonPrimary(
                          title: "cplife.confirm_continue".tr(),
                          buttonLoading: false,
                          customWidth: width * 0.9,
                          customHeight: 48,
                          onPressed: !isVisible
                              ? null
                              : () {
                                  if (isUnitLinked) {
                                    DefaultTabController.of(context).animateTo(1);
                                  } else {
                                    showInfoWidget(context, "cplife.no_service_available".tr());
                                  }
                                },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  dropDown({
    required double height,
    required double width,
    required String title,
  }) {
    final colorTheme = context.colorTheme<CustomTheme>();

    return BlocBuilder<LifeInsurancesBloc, LifeInsurancesState>(
      bloc: _lifeInsurancesBloc,
      builder: (context, state) {
        final bool loading = state is LifeInsurancesStateLoading;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppStyle.size14Weight600,
            ),
            Container(
              width: width,
              margin: const EdgeInsets.only(top: 10),
              child: DropdownButtonFormField(
                value: dropdownValue,
                icon: const Icon(Icons.keyboard_arrow_down_sharp, size: 20, color: AppColors.darkGray),
                hint: loading
                    ? const CircularProgressIndicator()
                    : Text(
                        "cplife.pick_insurance".tr(),
                        style: AppStyle.size12Weight400.copyWith(color: colorTheme.colorTextQuaternary),
                      ),
                validator: (value) => value == null ? "cplife.pick_insurance".tr() : null,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                style: AppStyle.size12Weight400.copyWith(color: Colors.black),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.lightGrey,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                  isCollapsed: true,
                  errorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.error,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  disabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.borderColors,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.borderColors,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.borderColors,
                    ),
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.borderColors,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  errorStyle: const TextStyle(
                    fontFamily: "Pelak",
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: AppColors.error,
                  ),
                  hintText: "cplife.pick_your_insurance".tr(),
                  hintStyle:  TextStyle(
                    fontFamily: "Pelak",
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: colorTheme.colorTextQuaternary,
                  ),
                ),
                items: insList.map(
                  (value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: RichText(
                          textDirection: TextDirection.ltr,
                          text: TextSpan(
                            children: [
                              value.isUnitLinked
                                  ? TextSpan(
                                      text: '${"cplife.unit_link".tr()}-',
                                      style: AppStyle.size15Weight400
                                          .copyWith(color: Colors.black), // style for the second part of text
                                    )
                                  : TextSpan(
                                      text: '${"cplife.life_and_capital_formation".tr()}-',
                                      style: AppStyle.size15Weight400
                                          .copyWith(color: Colors.black), // style for the second part of text
                                    ),
                              TextSpan(
                                text: value.fullBNO.toPersianDigit(),
                                style: AppStyle.size15Weight400
                                    .copyWith(color: Colors.black), // style for the second part of text
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ).toList(),
                onChanged: (value) {
                  setState(() {
                    value as LifeInsurancesResponseData;
                    if (insList.isNotEmpty) {
                      isVisible = true;
                      insuranceName = value.insurerName;
                      issuerCode = value.issuerCode.toString().toPersianDigit();
                      agentCode = value.agentCode.toString().toPersianDigit();
                      beginDate = value.beginDate.toPersianDigit();
                      endDate = value.endDate.toPersianDigit();
                      isUnitLinked = value.isUnitLinked;
                      insuranceYear = value.insuranceYear.toString().toPersianDigit();
                      widget.choiceLifeInsuranceStep1Callback(value);
                    }
                  });
                },
              ),
            ),
          ],
        );
      },
    );
  }
}

class ItemRow extends StatelessWidget {
  const ItemRow({
    super.key,
    required this.value,
    required this.title,
    required this.icon,
  });

  final String value;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            icon,
            color: colorTheme.solidVariant,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            title,
            style: TextTypography.labelLarge.copyWith(color: colorTheme.solidVariant),
          ),
          const Spacer(),
          Text(
            value,
            style: TextTypography.titleSmall,
          )
        ],
      ),
    );
  }
}
