import 'package:ios_samx/core/base_widget/app_buttons/app_button/app_button.dart';
import 'package:ios_samx/core/base_widget/app_top_app_bar/app_top_app_bar.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:ios_samx/core/widgets/text_form_field.dart';
import 'package:ios_samx/feature/main_app/agents_branches/domain/entities/get_cities_agents_branches/get_cities_agents_branches_entity.dart';
import 'package:ios_samx/feature/main_app/agents_branches/domain/use_cases/get_agents_list/params/get_agents_list_params.dart';
import 'package:ios_samx/feature/main_app/agents_branches/domain/use_cases/get_states/params/get_states_agents_branches_params.dart';
import 'package:ios_samx/feature/main_app/agents_branches/presentation/widgets/custom_expandable_list.dart';
import 'package:ios_samx/feature/main_app/dashboard/presentation/pages/dashboard_screen.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magicon/magicon.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pinput/pinput.dart';
import '../../../../../core/constant/app_style.dart';
import '../../../../../injection_container.dart';
import '../../data/data_sources/get_agents_branches_remote_data_source_impl.dart';
import '../../data/data_sources/get_branches_remote_data_source.dart';
import '../../domain/entities/get_agents/get_agents_list_response_data/get_agents_list_response_data.dart';
import '../../domain/entities/get_cities_agents_branches/get_cities_response_data/get_cities_agents_branches_response_data.dart';
import '../../domain/entities/get_states_agents_branches/get_states_agents_branches.dart';
import '../../domain/entities/get_states_agents_branches/get_states_response_data/get_states_agents_branches_response_data.dart';
import '../../domain/use_cases/get_cities/params/get_cities_agents_branches_params.dart';
import '../bloc/get_agents_list_normal/get_agents_list_bloc.dart';

class AgentsAndBranchesScreen extends StatefulWidget {
  const AgentsAndBranchesScreen({super.key});

  @override
  State<AgentsAndBranchesScreen> createState() =>
      _AgentsAndBranchesScreenState();
}

class _AgentsAndBranchesScreenState extends State<AgentsAndBranchesScreen> {
  late final GetAgentsListBloc _getAgentsListBloc;

  List<GetStatesAgentsBranchesResponseData> states = [];
  List<String> statesName = [];
  List<GetCitiesAgentsBranchesResponseData> cities = [];
  List<String> citiesName = [];
  TextEditingController _controllerState = TextEditingController();
  TextEditingController _controllerCities = TextEditingController();

  String searchType = "";
  String queryParam = "";
  bool callApi = true;
  List<ItemInfo> infoList = [];
  int index = 1;
  int loadedCount = 0;
  int pageNumber = 1;
  final int pageSize = 10;
  late GetAgentsListParams params;

  int stateCode = 0;
  int cityCode = 0;

  void resetFields() {
//  callApi = true;
    infoList = [];
    infoList.clear();
    index = 1;
    loadedCount = 0;
    pageNumber = 1;
    FocusManager.instance.primaryFocus?.unfocus();
  }

  List<List<String>> searchTypes = [
    ["Address", "main.address"],
    ["Name", "main.name"],
    ["Code", "main.code"],
  ];

  String? dropdownValue;

  late int totalCount;
  late int totalPages;
  late int currentPage;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _getAgentsListBloc = sl<GetAgentsListBloc>();

    super.initState();
  }

  String? userSelected;
  final TextEditingController _controllerQuery = TextEditingController();
  bool isSearching = false;
  String errorMessage = "";
  String hint = "";

  @override
  Widget build(BuildContext context) {
    final width = ResponsiveLayout.getDeviceType(context);
    final height = MediaQuery
        .of(context)
        .size
        .height;
    final colorTheme = context.colorTheme<CustomTheme>();

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => _getAgentsListBloc,
        ),
      ],
      child: WillPopScope(
        onWillPop: () async {
          Navigator.of(context).pushAndRemoveUntil(
              PageTransition(child: const DashboardScreen(),
                  type: PageTransitionType.leftToRight), (route) => false);
          return false;
        },
        child: Scaffold(
          backgroundColor: colorTheme.bg,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(64.0),
            child: AppTopAppBar(
              title: 'main.branches_and_representatives_list'.tr(),
              isQrCode: false,
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    PageTransition(child: const DashboardScreen(),
                        type: PageTransitionType.leftToRight),
                        (route) => false);
              },
            ),
          ),
          body: NotificationListener<ScrollEndNotification>(
            onNotification: (notification) {
              if (notification.metrics.pixels ==
                  notification.metrics.maxScrollExtent) {
                if (loadedCount < totalCount) {
                  pageNumber = pageNumber + 1;
                  _updateParams(pageNumber);
                  _getAgentsListBloc.add(
                      GetAgentsListEvent.getAgentListEventCalled(
                          params: params));
                }
              }
              return true;
            },
            child: Form(
              key: _formKey,
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                    width: width * 0.9,
                    color: colorTheme.bg,
                    child: CustomScrollView(
                      slivers: [
                        const SliverToBoxAdapter(
                          child: SizedBox(
                            height: 16,
                          ),
                        ),
                        SliverToBoxAdapter(
                          child: SizedBox(
                            height: 64,
                            width: double.infinity,
                            child: SizedBox(
                              height: 70,
                              child:

                              ///-------------
                              Autocomplete<String>(
                                displayStringForOption: (option) {
                                  return option;
                                },
                                fieldViewBuilder: (context,
                                    textEditingController, focusNode,
                                    onFieldSubmitted) {
                                  _controllerState = textEditingController;
                                  return TextFormField(
                                    style: TextTypography.valueInputStyle,
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.right,
                                    controller: textEditingController,
                                    focusNode: focusNode,
                                    decoration: textFormFieldDecoration(
                                        "main.province_name".tr(), colorTheme),
                                    validator: (value) {
                                      if (_controllerState.text.length > 1) {
                                        return null;
                                      } else {
                                        return "main.min_two_characters".tr();
                                      }
                                    },
                                  );
                                },
                                optionsViewBuilder: (context,
                                    Function(String) onSelected, options) {
                                  return Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 36),
                                      child: Container(
                                        width: width,
                                        decoration: BoxDecoration(
                                            color: colorTheme.bg, boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 0,
                                            blurRadius: 8,
                                            offset: const Offset(0, 4),
                                          ),
                                        ]),
                                        padding: EdgeInsets.zero,
                                        child: ListView.separated(
                                            padding: EdgeInsets.zero,
                                            itemBuilder: (context, index) {
                                              return ListTile(
                                                title: GestureDetector(
                                                  child: Text(
                                                      options.elementAt(index)
                                                          .toString(),
                                                      textAlign: TextAlign
                                                          .right,
                                                      style: TextTypography.valueInputStyle),
                                                ),
                                                onTap: () {
                                                  onSelected(
                                                      options.elementAt(index)
                                                          .toString());
                                                },
                                              );
                                            },
                                            separatorBuilder: (context,
                                                index) => const Divider(),
                                            itemCount: options.length),
                                      ),
                                    ),
                                  );
                                },
                                optionsBuilder: (textEditingValue) async {
                                  String query = textEditingValue.text;
                                  if (query.length < 2) {
                                    return [];
                                  } else {
                                    GetAgentsBranchesRemoteDataSource dataSource =
                                    GetAgentsBranchesRemoteDataSourceImpl(
                                        dio: Dio());
                                    GetStatesAgentsBranchesEntity response = await dataSource
                                        .getStates(
                                        GetStatesAgentsBranchesParams(
                                            partOfStateName: query));
                                    setState(() {
                                      states = response.responseData;
                                    });
                                    statesName = [];
                                    for (var element in response.responseData) {
                                      statesName.add(element.stateName);
                                    }
                                    statesName.add("");
                                    return statesName;
                                  }
                                },
                                onSelected: (option) {
                                  int index = statesName.indexOf(option);
                                  setState(() {
                                    stateCode = states[index].stateCode;
                                  });
                                },
                              ),

                              ///-------------
                            ),
                          ),
                        ),
                        const SliverToBoxAdapter(
                          child: SizedBox(
                            height: 12,
                          ),
                        ),
                        SliverToBoxAdapter(
                          child: SizedBox(
                            height: 64,
                            width: double.infinity,

                            ///--------------
                            child: SizedBox(
                              height: 70,
                              child: Autocomplete<String>(
                                fieldViewBuilder: (context,
                                    textEditingController, focusNode,
                                    onFieldSubmitted) {
                                  _controllerCities = textEditingController;
                                  return TextFormField(
                                    style: TextTypography.valueInputStyle,
                                    textDirection: TextDirection.rtl,
                                      textAlign: TextAlign.right,
                                  controller: textEditingController,
                                  focusNode: focusNode,
                                      decoration: textFormFieldDecoration("main.city_name".tr(), colorTheme),
                                  validator: (value) {
                                  if (_controllerCities.text.length > 1) {
                                  return null;
                                  } else {
                                  return "main.min_two_characters".tr();
                                  }
                                  },
                                  );
                                },
                                optionsViewBuilder: (context,
                                    Function(String) onSelected, options) {
                                  return Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 36),
                                      child: Container(
                                        width: width,
                                        padding: EdgeInsets.zero,
                                        decoration: BoxDecoration(
                                            color: colorTheme.bg, boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 0,
                                            blurRadius: 8,
                                            offset: const Offset(0, 4),
                                          ),
                                        ]),
                                        child: ListView.separated(
                                            padding: EdgeInsets.zero,
                                            itemBuilder: (context, index) {
                                              return ListTile(
                                                title: Text(
                                                    options.elementAt(index)
                                                        .toString(),
                                                    textAlign: TextAlign.right,
                                                    style: TextTypography.valueInputStyle),
                                                onTap: () {
                                                  onSelected(
                                                      options.elementAt(index)
                                                          .toString());
                                                },
                                              );
                                            },
                                            separatorBuilder: (context,
                                                index) => const Divider(),
                                            itemCount: options.length),
                                      ),
                                    ),
                                  );
                                },
                                optionsBuilder: (textEditingValue) async {
                                  String query = textEditingValue.text;
                                  if (query.length < 2) {
                                    return [];
                                  } else {
                                    GetAgentsBranchesRemoteDataSource dataSource =
                                    GetAgentsBranchesRemoteDataSourceImpl(
                                        dio: Dio());
                                    GetCitiesAgentsBranchesEntity entity = await dataSource
                                        .getCities(
                                        GetCitiesAgentsBranchesParams(
                                            stateCode: stateCode.toString(),
                                            partOfCityName: query));
                                    setState(() {
                                      cities = entity.responseData;
                                    });
                                    citiesName = [];
                                    for (var element in cities) {
                                      citiesName.add(element.cityName);
                                    }
                                    citiesName.add("");
                                    return citiesName;
                                  }
                                },
                                onSelected: (option) {
                                  int index = citiesName.indexOf(option);
                                  setState(() {
                                    cityCode = cities[index].cityCode;
                                  });
                                },
                              ),
                            ),

                            ///--------------
                          ),
                        ),
                        const SliverToBoxAdapter(
                          child: SizedBox(
                            height: 12,
                          ),
                        ),
                        SliverToBoxAdapter(
                          child: Row(
                            children: [
                              Expanded(
                                flex: 9,
                                child: DropdownButtonFormField<String>(
                                  value: dropdownValue,
                                  autovalidateMode: AutovalidateMode
                                      .onUserInteraction,
                                  style: AppStyle.size12Weight300.copyWith(
                                      color: colorTheme.black),
                                  decoration: inputDecorationForDropDown(
                                      colorTheme),
                                  items: searchTypes
                                      .map((value) =>
                                      DropdownMenuItem(
                                        value: value[0],
                                        child: Container(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            value[1],
                                            textDirection: TextDirection.ltr,
                                            style: TextTypography.valueInputStyle,
                                          ).tr(),
                                        ),
                                      ))
                                      .toList(),
                                  onChanged: (value) {
                                    setState(() {
                                      resetFields();
                                      callApi = false;

                                      switch (value) {
                                        case "Address":
                                          _controllerQuery.text = "";
                                          searchType = "address";
                                          hint =
                                              "main.enter_part_of_address".tr();
                                          //  errorMessage = " قسمتی از آدرس درج شود";
                                          break;
                                        case "Name":
                                          _controllerQuery.text = "";
                                          searchType = "name";
                                          hint = "main.enter_part_of_name".tr();
                                          //  errorMessage = " قسمتی از نام درج شود";
                                          break;
                                        case "Code":
                                          _controllerQuery.text = "";
                                          searchType = "code";
                                          hint = "main.enter_part_of_code".tr();
                                          //  errorMessage = " قسمتی از کد درج شود";
                                          break;
                                      }
                                    });
                                  },
                                ),
                              ),
                              Expanded(
                                  flex: 10,
                                  child: CustomTextFormField(
                                    heightStyle: 4,
                                    controller: _controllerQuery,
                                    errorMessage: errorMessage,
                                    hint: hint,
                                    keyboardType: searchType == "code" ? TextInputType.number : TextInputType.text,
                                    enableBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: colorTheme.borders,
                                      ),
                                      borderRadius: const BorderRadius.all(Radius.circular(4)),
                                    ),
                                    onChanged: (p0) {
                                      setState(() {
                                        String inputText = p0.trim();
                                        if (inputText.isNotEmpty) {
                                          callApi = true;
                                        } else {
                                          callApi = false;
                                        }
                                      });
                                    },
                                  ))
                            ],
                          ),
                        ),
                        const SliverToBoxAdapter(
                          child: SizedBox(
                            height: 12,
                          ),
                        ),
                        BlocConsumer<GetAgentsListBloc, GetAgentsListState>(
                          bloc: _getAgentsListBloc,
                          listener: (context, state) {
                            state.maybeWhen(
                              orElse: () {},
                              loadFailure: (failure) {
                                showErrorWidget(
                                    context, failure.code, failure.message!);
                              },
                              loadSuccess: (agentsListEntity) {
                                setState(() {
                                  GetAgentsListResponseData responseData = agentsListEntity
                                      .responseData;

                                  totalCount = responseData.totalCount;
                                  totalPages = responseData.totalPages;
                                  currentPage = responseData.currentPage;

                                  for (var element in responseData.items) {
                                    infoList.add(ItemInfo(
                                      id: index,
                                      kind: element.kind,
                                      unitName: element.unitName,
                                      stateName: element.stateName,
                                      cityName: element.cityName,
                                      address: element.address,
                                      phone: element.phone,
                                      fax: element.fax,
                                      email: element.email,
                                      isExpanded: false,
                                    ));
                                    ++index;
                                    ++loadedCount;
                                  }
                                });
                              },
                            );
                          },
                          builder: (context, state) {
                            bool btnLoading = state is GetAgentsListStateLoading;
                            return SliverToBoxAdapter(
                              child: AppButton(
                                buttonType: ButtonType.isFilled,
                                title: "main.search".tr(),
                                customHeight: 40,
                                buttonLoading: btnLoading,
                                customWidth: double.infinity,
                                leftIcon: Magicon.search,
                                onPressed: () {
                                  setState(() {
                                    resetFields();
                                    _updateParams(pageNumber);
                                    if (searchType.isNotEmpty &&
                                        _controllerQuery.text.isEmpty) {
                                      showErrorWidget(context, 100,
                                          "پارامتر جستجو نباید خالی باشد");
                                    } else {
                                      if (_formKey.currentState!.validate()) {
                                        if (_controllerState.length > 2 &&
                                            _controllerCities.length > 2) {
                                          _getAgentsListBloc
                                              .add(GetAgentsListEvent
                                              .getAgentListEventCalled(
                                              params: params));
                                        }
                                      }
                                    }
                                  });
                                },
                              ),
                            );
                          },
                        ),
                        const SliverToBoxAdapter(
                          child: SizedBox(height: 20),
                        ),
                        SliverToBoxAdapter(
                          child: Container(
                            height: height * 0.07,
                            decoration: BoxDecoration(
                              color: colorTheme.intComponents,
                              borderRadius:
                              const BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8)),
                            ),
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 16,
                                ),
                                Text(
                                  "main.row".tr(),
                                  style: AppStyle.size14Weight600.copyWith(
                                      color: colorTheme.textVariant),
                                ),
                                const Spacer(flex: 1),
                                Text(
                                  "main.title".tr(),
                                  style: AppStyle.size14Weight600.copyWith(
                                      color: colorTheme.textVariant),
                                ),
                                const Spacer(
                                  flex: 5,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SliverList(
                          delegate: SliverChildBuilderDelegate((
                              BuildContext context, int index) {
                            return CustomExpandableList(
                              infoList: infoList,
                            );
                          }, childCount: 1),
                        )
                      ],
                    )),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _updateParams(int pageNumberr) {
    setState(() {
      switch (searchType) {
        case "address":
          params = GetAgentsListParams(
              stateCode: stateCode,
              cityCode: cityCode,
              page: pageNumberr,
              pageSize: pageSize,
              searchType: "address",
              query: _controllerQuery.text);
          break;

        case "name":
          params = GetAgentsListParams(
              stateCode: stateCode,
              cityCode: cityCode,
              page: pageNumberr,
              pageSize: pageSize,
              searchType: "name",
              query: _controllerQuery.text);
          break;

        case "code":
          params = GetAgentsListParams(
              stateCode: stateCode,
              cityCode: cityCode,
              page: pageNumberr,
              pageSize: pageSize,
              searchType: "code",
              query: _controllerQuery.text);
          break;

        default:
          params = GetAgentsListParams(stateCode: stateCode,
              cityCode: cityCode,
              page: pageNumberr,
              pageSize: pageSize);
          break;
      }
    });
  }
}

class ItemInfo {
  final int id;
  final String kind;
  final String unitName;
  final String stateName;
  final String cityName;
  final String address;
  final String phone;
  final String fax;
  final String email;
  bool isExpanded;

  ItemInfo({
    required this.id,
    required this.kind,
    required this.unitName,
    required this.stateName,
    required this.cityName,
    required this.address,
    required this.phone,
    required this.fax,
    required this.email,
    required this.isExpanded,
  });
}

InputDecoration inputDecorationForDropDown(CustomTheme colorTheme) =>
    InputDecoration(
      filled: true,
      fillColor: colorTheme.intComponents,
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
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: colorTheme.error,
      ),
      hintText: "main.search_by".tr(),
      hintStyle: TextTypography.labelMedium
          .copyWith(
          color: colorTheme.colorTextQuaternary, fontWeight: FontWeight.w400),
    );

InputDecoration textFormFieldDecoration(String hint, CustomTheme colorTheme) =>
    InputDecoration(
      filled: true,
      fillColor: colorTheme.intComponents,
      contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      isCollapsed: false,
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
      errorStyle: TextStyle(
        fontFamily: "Pelak",
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: colorTheme.error,
      ),
      hintText: hint,
      hintStyle: TextTypography.labelMedium
          .copyWith(
          color: colorTheme.colorTextQuaternary, fontWeight: FontWeight.w400),
    );
