import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:ios_samx/core/widgets/button_primary.dart';
import 'package:ios_samx/core/widgets/text_form_field.dart';
import 'package:ios_samx/feature/darmanet_app/health_care_centers/presentation/bloc/clinic_types/get_clinics_types_bloc.dart';
import 'package:ios_samx/feature/darmanet_app/health_care_centers/presentation/bloc/clinin_search/get_clinic_search_result_bloc.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/usecase/get_cities/param/get_cities_param.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:page_transition/page_transition.dart';

import '../../../../../core/constant/app_style.dart';
import '../../../../../injection_container.dart';
import '../../../../main_app/dashboard/presentation/pages/dashboard_screen.dart';
import '../../../introduction/domain/entities/get_cities/get_citites_response_data/get_cities_response_data.dart';
import '../../../introduction/presentation/bloc/get_cities/get_cities_bloc.dart';
import '../../domain/entities/clinic_search/response_data/records/clinic_search_result_records.dart';
import '../../domain/entities/clinics_types/get_clinics_types_response_data/get_clinics_types_response_data.dart';
import '../../domain/use_cases/clinic_search/params/get_clinic_search_result_params.dart';
import '../../domain/use_cases/clinics_types/params/get_clinics_types_params.dart';
import '../widgets/custom_expandable_list.dart';

class HealthCareCenters extends StatefulWidget {
  const HealthCareCenters({super.key});

  @override
  State<HealthCareCenters> createState() => _HealthCareCentersState();
}

class _HealthCareCentersState extends State<HealthCareCenters> {
  final TextEditingController controllerCities = TextEditingController();
  final TextEditingController controllerCenterType = TextEditingController();
  final TextEditingController controllerCenterName = TextEditingController();

  String? dropdownValue;
  bool isTypedAnyThing = false;

  int centerIndex = -1;
  int cityIndex = -1;

  String cityId = "8d7ebe49-3233-49c4-b6e0-3a3ef169e3da"; // tehran
  String clinicTypeId = "dae69c6d-2537-4385-b281-272a946e6f0e"; // dentists

  //------------
  late GetCitiesBloc _getCitiesBloc;
  late GetClinicsTypesBloc _clinicsTypesBloc;
  late GetClinicSearchResultBloc _clinicSearchBloc;
  late List<GetCitiesResponseData> getCitiesResponseData;
  late List<GetClinicsTypesResponseData> getClinicsTypesResponseData;

  List<String> healthcareTypes = [];
  List<ClinicSearchResultRecord> records = [];
  List<ClinicInfo> clinics = [];
  List<CityCenter> cities = [];
  List<CityCenter> centersTypes = [];
  String hintTextSearchFieldCities = "darmanet.loading".tr();
  String hintTextDropdownClinicTypes = "darmanet.loading".tr();
  //------------
  @override
  void initState() {
    setState(() {
      clinics.clear();
      healthcareTypes.clear();
      cities.clear();
      centersTypes.clear();
      records.clear();

      centerIndex = -1;
      cityIndex = -1;
    });
    _getCitiesBloc = sl<GetCitiesBloc>();
    _clinicsTypesBloc = sl<GetClinicsTypesBloc>();
    _clinicSearchBloc = sl<GetClinicSearchResultBloc>();

    _getCitiesBloc.add(const GetCitiesEvent.getCitiesEventCalled(param: GetCitiesParam(limit: 1000, offset: 0)));
    _clinicsTypesBloc.add(const GetClinicsTypesEvent.getClinicsTypesCalled(
        params: GetClinicsTypesParams(limit: 10, offset: 0, searchType: 10)));

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
          create: (context) => _getCitiesBloc,
        ),
        BlocProvider(
          create: (context) => _clinicsTypesBloc,
        ),
        BlocProvider(
          create: (context) => _clinicSearchBloc,
        ),
      ],
      child: WillPopScope(
        onWillPop: () async {
          Navigator.of(context).pushAndRemoveUntil(
              PageTransition(child: const DashboardScreen(), type: PageTransitionType.leftToRight), (route) => false);
          return false;
        },
        child: Scaffold(
          backgroundColor: colorTheme.white,
          appBar: AppBar(
            backgroundColor: colorTheme.black,
            elevation: 0,
            centerTitle: true,
            title: Text(
              'darmanet.list_of_contracted_medical_centers'.tr(),
              style: AppStyle.size18Weight700,
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    PageTransition(child: const DashboardScreen(), type: PageTransitionType.leftToRight),
                    (route) => false);
              },
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.arrow_back,
                  color: colorTheme.white,
                ),
              ),
            ),
          ),
          body: SafeArea(
              child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: width * 0.9,
              color: Colors.white,
              child: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: CustomScrollView(
                  slivers: [
                    const SliverToBoxAdapter(
                      child: SizedBox(
                        height: 16,
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Text(
                        "darmanet.city_name".tr(),
                        style: AppStyle.size15Weight600,
                      ),
                    ),
                    const SliverToBoxAdapter(
                      child: SizedBox(
                        height: 8,
                      ),
                    ),
                    BlocConsumer<GetCitiesBloc, GetCitiesState>(
                      bloc: _getCitiesBloc,
                      listener: (context, state) {
                        state.maybeWhen(
                          orElse: () {},
                          loadSuccess: (getCitiesEntities) {
                            setState(() {
                              getCitiesResponseData = getCitiesEntities.getCitiesResponseData;
                              for (int i = 0; i < getCitiesResponseData.length; i++) {
                                cities.add(CityCenter(
                                    index: i, name: getCitiesResponseData[i].text, id: getCitiesResponseData[i].value));
                                //   print("City index =  ${cities[i].index}  City name =  ${cities[i].name}");
                              }
                              hintTextSearchFieldCities = "darmanet.type_the_city_name".tr();
                            });
                          },
                          loadFailure: (failure) {
                            showErrorWidget(context, failure.code, failure.message!);
                            hintTextSearchFieldCities = "darmanet.error_retrieving_information".tr();
                          },
                        );
                      },
                      builder: (context, state) {
                        return SliverToBoxAdapter(
                          child: Center(
                              child: Container(
                            height: 48,
                            decoration: const BoxDecoration(),
                            child: TypeAheadField<String>(
                              textFieldConfiguration: TextFieldConfiguration(
                                onTap: () {
                                  setState(() {
                                    clinics.clear();
                                  });
                                },
                                controller: controllerCities,
                                style: TextTypography.valueInputStyle,
                                decoration: InputDecoration(
                                  hintText: hintTextSearchFieldCities,
                                  hintStyle: TextTypography.labelMedium
                                      .copyWith(color: colorTheme.colorTextQuaternary , fontWeight: FontWeight.w400),
                                  border: InputBorder.none, // این خط مشکی را مخفی می‌کند
                                  filled: true,
                                  fillColor: colorTheme.layer,
                                  //suffix: const Icon(Icons.access_alarm),

                                  //--
                                  disabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: colorTheme.borders,
                                    ),
                                    borderRadius: const BorderRadius.all(Radius.circular(4)),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: colorTheme.borders,
                                    ),
                                    borderRadius: const BorderRadius.all(Radius.circular(4)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: colorTheme.borders,
                                    ),
                                  ),
                                  //--
                                ),
                              ),
                              suggestionsCallback: (pattern) {
                                if (pattern.isEmpty) {
                                  return List<String>.empty();
                                }

                                List<String> names = [];
                                for (int i = 0; i < cities.length; i++) {
                                  names.add(cities[i].name);
                                }

                                return names
                                    .where((names) => names.toLowerCase().contains(pattern.toLowerCase()))
                                    .toList();
                              },
                              itemBuilder: (context, suggestion) {
                                return ListTile(
                                  title: Text(suggestion, style: TextTypography.valueInputStyle, textAlign: TextAlign.right),
                                );
                              },
                              onSuggestionSelected: (suggestion) {
                                controllerCities.text = suggestion; // به‌روزرسانی مقدار فیلد متنی
                                print('Selected: $suggestion');

                                //----
                                try {
                                  CityCenter result = cities.firstWhere((center) => center.name == suggestion);
                                  // print('Index: ${result.index}');
                                  setState(() {
                                    cityIndex = result.index;
                                    cityId = cities[cityIndex].id;
                                  });
                                } catch (e) {
                                  print('موردی با نام $suggestion پیدا نشد.');
                                }
                                //----
                              },
                            ),
                          )

                              //************
                              ),
                        );
                      },
                    ),
                    const SliverToBoxAdapter(
                      child: SizedBox(
                        height: 16,
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Text(
                        "darmanet.type_of_medical_center".tr(),
                        style: AppStyle.size15Weight600,
                      ),
                    ),
                    const SliverToBoxAdapter(
                      child: SizedBox(
                        height: 8,
                      ),
                    ),
                    BlocConsumer<GetClinicsTypesBloc, GetClinicsTypesState>(
                      bloc: _clinicsTypesBloc,
                      listener: (context, state) {
                        state.maybeWhen(
                          orElse: () {},
                          loadFailure: (failure) {
                            showErrorWidget(context, failure.code, failure.message!);
                            hintTextDropdownClinicTypes = "darmanet.error_retrieving_information".tr();
                          },
                          loadSuccess: (entity) {
                            setState(() {
                              getClinicsTypesResponseData = entity.clinicTypes;
                              for (int i = 0; i < getClinicsTypesResponseData.length; i++) {
                                healthcareTypes.add(getClinicsTypesResponseData[i].text);
                                centersTypes.add(CityCenter(
                                    index: i,
                                    name: getClinicsTypesResponseData[i].text,
                                    id: getClinicsTypesResponseData[i].value));
                              }

                              hintTextDropdownClinicTypes = "darmanet.please_select".tr();
                            });
                          },
                        );
                      },
                      builder: (context, state) {
                        return SliverToBoxAdapter(
                          child: DropdownButtonFormField(
                            value: dropdownValue,
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            style: TextTypography.valueInputStyle,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: colorTheme.layer,
                              contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                              isCollapsed: true,
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: colorTheme.error,
                                ),
                                borderRadius: const BorderRadius.all(Radius.circular(4)),
                              ),
                              disabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: colorTheme.borders,
                                ),
                                borderRadius: const BorderRadius.all(Radius.circular(4)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: colorTheme.borders,
                                ),
                                borderRadius: const BorderRadius.all(Radius.circular(4)),
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
                                borderRadius: const BorderRadius.all(Radius.circular(4)),
                              ),
                              errorStyle: TextStyle(
                                fontFamily: "Pelak",
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: colorTheme.error,
                              ),
                              hintText: hintTextDropdownClinicTypes,
                              hintStyle:  TextTypography.labelStyle
                            ),
                            items: centersTypes
                                .map((value) => DropdownMenuItem(
                                      value: value.index,
                                      child: Container(
                                        alignment: AlignmentDirectional.centerStart,
                                        child: Text(
                                          value.name.toString(),
                                          textDirection: TextDirection.ltr,
                                          style: TextTypography.valueInputStyle,
                                        ),
                                      ),
                                    ))
                                .toList(),
                            onChanged: (value) {
                              setState(() {
                                /// init parameters
                                isTypedAnyThing = true;
                                clinicTypeId = centersTypes[int.parse(value.toString())].id;
                              });
                            },
                          ),
                        );
                      },
                    ),
                    const SliverToBoxAdapter(
                      child: SizedBox(
                        height: 16,
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Text(
                        "darmanet.medical_center_name".tr(),
                        style: AppStyle.size15Weight600,
                      ),
                    ),
                    const SliverToBoxAdapter(
                      child: SizedBox(
                        height: 8,
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: CustomTextFormField(
                        fillColor: colorTheme.layer,
                        enableBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: colorTheme.borders,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(4)),
                        ),
                        controller: controllerCenterName,
                        errorMessage: "",
                        onChanged: (p0) {
                          setState(() {
                            clinics.clear();
                          });
                        },
                      ),
                    ),
                    const SliverToBoxAdapter(
                      child: SizedBox(
                        height: 16,
                      ),
                    ),
                    BlocConsumer<GetClinicSearchResultBloc, GetClinicSearchResultState>(
                      bloc: _clinicSearchBloc,
                      listener: (context, state) {
                        state.maybeWhen(
                          orElse: () {},
                          loadFailure: (failure) {
                            showErrorWidget(context, failure.code, failure.message!);
                          },
                          loadSuccess: (getClinicSearchResultEntity) {
                            setState(() {
                              records = getClinicSearchResultEntity.records;

                              for (int i = 0; i < records.length; i++) {
                                clinics.add(ClinicInfo(
                                    id: (i + 1),
                                    name: records[i].name,
                                    city_city: records[i].provinceName != null
                                        ? "${records[i].provinceName}-${records[i].cityName}"
                                        : records[i].cityName,
                                    //     city_city: "",

                                    serviceName: records[i].clinicTypeName,
                                    type: records[i].clinicTypeName,
                                    code: records[i].code,
                                    province: records[i].provinceName,
                                    city: records[i].cityName,
                                    tel: records[i].phone,
                                    address: records[i].address,
                                    isExpanded: false));
                              }
                            });
                          },
                        );
                      },
                      builder: (context, state) {
                        final buttonLoading = state is GetClinicSearchResultStateLoading;

                        return SliverToBoxAdapter(
                          child: ButtonPrimary(
                            title: "darmanet.search_text".tr(),
                            customHeight: 48,
                            customWidth: double.infinity,
                            buttonLoading: buttonLoading,
                            icon: Icons.search_sharp,
                            onPressed: () {
                              setState(() {
                                clinics.clear();
                                FocusManager.instance.primaryFocus?.unfocus();
                              });
                              _clinicSearchBloc.add(GetClinicSearchResultEvent.getClinicSearchCalled(
                                  params: GetClinicSearchResultParams(
                                      name: controllerCenterName.text.toString(),
                                      clinicTypeId: clinicTypeId,
                                      offset: 0,
                                      limit: 1000, //10
                                      cityId: cityId,
                                      deactive: false,
                                      sortDir: "asc",
                                      sortField: "Name",
                                      sumFieldName: "")));
                            },
                          ),
                        );
                      },
                    ),
                    const SliverToBoxAdapter(
                      child: SizedBox(
                        height: 28,
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Container(
                        height: height * 0.07,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.only(topLeft: Radius.circular(8.0), topRight: Radius.circular(8.0)),
                            color: colorTheme.borders),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "darmanet.row".tr(),
                                  style: AppStyle.size13Weight600primary.copyWith(
                                    color: colorTheme.solidVariant,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                alignment: AlignmentDirectional.centerStart,
                                child: Text(
                                  "darmanet.medical_center_information".tr(),
                                  style: AppStyle.size13Weight600primary.copyWith(color: colorTheme.solidVariant),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: colorTheme.borders,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomExpandableList(clinics: clinics),
                    const SliverToBoxAdapter(
                      child: SizedBox(
                        height: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
        ),
      ),
    );
  }
}

class CityCenter {
  final int index;
  final String name;
  final String id;

  CityCenter({required this.index, required this.name, required this.id});
}
