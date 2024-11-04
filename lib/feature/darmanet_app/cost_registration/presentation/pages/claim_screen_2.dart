import 'dart:ui';

import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/get_all_family_for_all_contract/get_all_family_for_all_contract_response_data/get_all_family_for_all_contract_response_data.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/check_repetitive/param/check_repetitive_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/create_cost/param/create_cost_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/get_all_family_for_all_contract/param/get_all_family_for_all_contract_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/presentation/bloc/check_repetitive/check_repetitive_bloc.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/presentation/bloc/create_cost/create_cost_bloc.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/presentation/bloc/get_all_family_for_all_contract/get_all_family_for_all_contract_bloc.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/presentation/pages/claim_main_screen.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

import '../../../../../core/constant/app_style.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../../core/widgets/button_primary.dart';
import '../../../../../core/widgets/simple_rounded_container.dart';
import '../../../../../core/widgets/text_form_field.dart';
import '../../../../../injection_container.dart';

class ClaimScreen2 extends StatefulWidget {
  final String customerCompanyId;
  final String contractId;
  final String costDescriptionId;
  final PageController pageController;
  final DataCallback dataCallback;
  final InsurerCallback insurerCallback;
  final CostDateCallback costDateCallback;
  final AmountCallback amountCallback;

  const ClaimScreen2({
    super.key,
    required this.customerCompanyId,
    required this.contractId,
    required this.costDescriptionId,
    required this.pageController,
    required this.dataCallback,
    required this.insurerCallback,
    required this.costDateCallback,
    required this.amountCallback,
  });

  @override
  State<ClaimScreen2> createState() => _ClaimScreen2State();
}

class _ClaimScreen2State extends State<ClaimScreen2> {
  String label = 'darmanet.please_select'.tr();
  TextStyle costDateStyle = TextTypography.labelStyle;

  String? dropdownValue;

  String selectedDate = Jalali.now().toJalaliDateTime();

  int currentYear = Jalali.now().year;

  int currentMonth = Jalali.now().month;

  TextEditingController priceController = TextEditingController();

  late GetAllFamilyForAllContractBloc _getAllFamilyForAllContractBloc;
  late CheckRepetitiveBloc _checkRepetitiveBloc;
  late CreateCostBloc _createCostBloc;
  late bool borderError = false;

  List<GetAllFamilyForAllContractResponseData> personList = [];
  late String personId;
  String costDate = "";

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _checkRepetitiveBloc = sl<CheckRepetitiveBloc>();
    _getAllFamilyForAllContractBloc = sl<GetAllFamilyForAllContractBloc>();
    _createCostBloc = sl<CreateCostBloc>();
    _getAllFamilyForAllContractBloc.add(
      GetAllFamilyForAllContractEvent.getAllFamilyForAllContractCalled(
        param: GetAllFamilyForAllContractParam(
          contractId: widget.contractId,
          customerCompanyId: widget.customerCompanyId,
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();
    double height = MediaQuery.of(context).size.height;
    double width = ResponsiveLayout.getDeviceType(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => _checkRepetitiveBloc,
        ),
        BlocProvider(
          create: (context) => _getAllFamilyForAllContractBloc,
        ),
        BlocProvider(
          create: (context) => _createCostBloc,
        )
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<CheckRepetitiveBloc, CheckRepetitiveState>(
            bloc: _checkRepetitiveBloc,
            listener: (context, state) {
              state.maybeWhen(
                loadFailure: (failure) {
                  showErrorWidget(context, failure.code, failure.message!);
                },
                loadSuccess: (checkRepetitiveEntities) {
                  if (checkRepetitiveEntities.succeed == false) {
                    showErrorWidget(context, 101, checkRepetitiveEntities.message);
                  } else {
                    _createCostBloc.add(
                      CreateCostEvent.createCostEventCalled(
                        param: CreateCostParam(
                          personId: personId,
                          costDate: costDate,
                          costDescriptionId: widget.costDescriptionId,
                          givenAmount: priceController.text.replaceAll(",", "").trim(),
                          state: 0,
                          customerCompanyId: widget.customerCompanyId,
                          contractId: widget.contractId,
                          customerCompanyPersonId: personId,
                          id: "00000000-0000-0000-0000-000000000000",
                          prescriptionType: "",
                        ),
                      ),
                    );
                  }
                },
                orElse: () {},
              );
            },
          ),
          BlocListener<CreateCostBloc, CreateCostState>(
              bloc: _createCostBloc,
              listener: (context, state) {
                state.maybeWhen(
                  loadFailure: (failure) {
                    showErrorWidget(context, failure.code, failure.message!);
                  },
                  loadSuccess: (createCostEntities) {
                    if (createCostEntities.costResponseData.succeed == false) {
                      showErrorWidget(context, 101, createCostEntities.costResponseData.message);
                    } else {
                      widget.dataCallback(
                        createCostEntities.costResponseData.costItem.envelopeId!,
                        createCostEntities.costResponseData.costItem.id!,
                      );
                      widget.pageController
                          .animateToPage(2, duration: const Duration(milliseconds: 1), curve: Curves.linear);
                    }
                  },
                  orElse: () {},
                );
              })
        ],
        child: SingleChildScrollView(
          child: Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              width: width * 0.9,
              height: height * 0.7,
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      child: Text(
                        'darmanet.enter_expense_information'.tr(),
                        style: AppStyle.size14Weight600,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    dropDown(height: height * 0.15, width: width * 0.9, title: "نام بیمه‌شده"),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      alignment: Alignment.topRight,
                      child: Text(
                        'darmanet.cost_date'.tr(),
                        style: AppStyle.size14Weight600,
                      ),
                    ),
                    SimpleRoundedContainer(
                      width: double.infinity,
                      height: height * 0.06,
                      bgColor: colorTheme.layer,
                      borderRadius: width * 0.01,
                      borderColor: borderError ? Colors.red : colorTheme.borders,
                      widget: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(label, style: costDateStyle),
                            Image(
                              width: 20,
                              image: const AssetImage("assets/images/calendar.png"),
                              color: colorTheme.black,
                            ),
                          ],
                        ),
                      ),
                      onTap: () async {
                        Jalali? picked = await showPersianDatePicker(
                            context: context,
                            initialDate: Jalali.now(),
                            firstDate: Jalali(1385, 8),
                            lastDate: Jalali(Jalali.now().year, Jalali.now().month, Jalali.now().day, Jalali.now().hour,
                                Jalali.now().minute + 1),
                            initialEntryMode: PDatePickerEntryMode.calendarOnly,
                            initialDatePickerMode: PDatePickerMode.year,
                            builder: (context, child) {
                              return Theme(
                                data: ThemeData(
                                  // textTheme: TextTheme(),
                                  colorScheme: ColorScheme.light(
                                    primary: colorTheme.primary,
                                  ),
                                  dialogTheme: const DialogTheme(
                                    // contentTextStyle: TextStyle(
                                    //   locale: Locale('fa', 'IR'),
                                    //   fontFamily: "Pelak",
                                    // ),
                                    // titleTextStyle: TextStyle(
                                    //   locale: Locale('fa', 'IR'),
                                    //   fontFamily: "Pelak",
                                    // ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(0)),
                                    ),
                                  ),
                                ),
                                child: child!,
                              );
                            });

                        if (picked != null && picked != selectedDate) {
                          setState(() {
                            costDate =
                                "${picked.toGregorian().year}-${picked.toGregorian().month}-${picked.toGregorian().day}";
                            label =
                                "${picked.year.toString().toPersianDigit()}/${picked.month.toString().toPersianDigit()}/${picked.day.toString().toPersianDigit()}";
                            widget.costDateCallback(label);
                            costDateStyle = TextTypography.valueInputStyle;
                            borderError = false;
                          });
                        }
                      },
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      alignment: Alignment.topRight,
                      child: Text(
                        'darmanet.amount'.tr(),
                        style: AppStyle.size14Weight600,
                      ),
                    ),
                    CustomTextFormField(
                      isRial: true,
                      controller: priceController,
                      errorMessage: '',
                      validator: (p0) => Utils.amountValidator(p0, 10000, 500000000),
                      hint: "0",
                      maxLength: 13,
                      keyboardType: TextInputType.number,
                      prefix: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "darmanet.saved_money_currency".tr(),
                          style: AppStyle.size12Weight400.copyWith(color: colorTheme.layer),
                        ),
                      ),
                      fillColor: colorTheme.layer,
                      enableBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: colorTheme.borders,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(5)),
                      ),
                      onChanged: (value) {
                        setState(() {
                          widget.amountCallback(value);
                        });
                      },
                    ),
                    const Spacer(),
                    BlocBuilder<CheckRepetitiveBloc, CheckRepetitiveState>(
                      bloc: _checkRepetitiveBloc,
                      builder: (context, state) {
                        final bool loadingCheckRepetitive = state is CheckRepetitiveStateLoading;
                        return BlocBuilder<CreateCostBloc, CreateCostState>(
                          bloc: _createCostBloc,
                          builder: (context, state) {
                            final bool loadingCreateCost = state is CreateCostStateLoading;
                            return ButtonPrimary(
                                title: "darmanet.confirm_and_continue".tr(),
                                buttonLoading: loadingCreateCost || loadingCheckRepetitive,
                                customWidth: width * 0.9,
                                customHeight: 48,
                                onPressed: () {
                                  if (costDate.isEmpty) {
                                    setState(() {
                                      borderError = true;
                                    });
                                    showErrorWidget(context, 100, "darmanet.plz_enter_date".tr());
                                  }
                                  if (_formKey.currentState!.validate() && costDate.isNotEmpty) {
                                    _checkRepetitiveBloc.add(
                                      CheckRepetitiveEvent.checkRepetitiveEventCalled(
                                        param: CheckRepetitiveParam(
                                          personId: personId,
                                          costDate: costDate,
                                          costDescriptionId: widget.costDescriptionId,
                                          givenAmount: priceController.text.replaceAll(",", "").trim(),
                                          state: 0,
                                          customerCompanyId: widget.customerCompanyId,
                                          contractId: widget.contractId,
                                          customerCompanyPersonId: personId,
                                          id: "00000000-0000-0000-0000-000000000000",
                                          prescriptionType: "",
                                        ),
                                      ),
                                    );
                                  }
                                });
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget dropDown({
    required double height,
    required double width,
    required String title,
  }) {
    final colorTheme = context.colorTheme<CustomTheme>();
    return BlocConsumer<GetAllFamilyForAllContractBloc, GetAllFamilyForAllContractState>(
      bloc: _getAllFamilyForAllContractBloc,
      listener: (context, state) {
        state.maybeWhen(
          loadFailure: (failure) {},
          loadSuccess: (getAllFamilyForAllContractEntities) {
            setState(() {
              personList = getAllFamilyForAllContractEntities.getAllFamilyForAllContractResponseData;
            });
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        final bool loading = state is GetAllFamilyForAllContractStateLoading;
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
                hint: loading
                    ? const CircularProgressIndicator()
                    : Text(
                        "darmanet.please_select".tr(),
                        style: TextTypography.labelStyle,
                      ),
                validator: (value) => value == null ? "darmanet.select_message".tr() : null,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                style: TextTypography.valueInputStyle,
                decoration: InputDecoration(
                  labelStyle: TextTypography.labelStyle,
                  errorStyle: TextStyle(
                    fontFamily: "Pelak",
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: colorTheme.error,
                  ),
                  filled: true,
                  fillColor: colorTheme.layer,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                  isCollapsed: true,
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: colorTheme.error,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: colorTheme.borders,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: colorTheme.borders,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: colorTheme.borders,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: colorTheme.borders,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                  ),
                  /*    errorStyle: TextStyle(
                    fontFamily: "Pelak",
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: colorTheme.error,
                  ),*/
                  hintText: "darmanet.please_select".tr(),
                  hintStyle: TextTypography.labelStyle,
                ),
                items: personList
                    .map(
                      (value) => DropdownMenuItem(
                        value: value,
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Text(
                            value.text,
                            textDirection: TextDirection.ltr,
                            style: TextTypography.valueInputStyle,
                          ),
                        ),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    value as GetAllFamilyForAllContractResponseData;
                    personId = value.value;
                    widget.insurerCallback(value.text);
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
