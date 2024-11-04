import 'package:ios_samx/core/base_widget/index.dart' show AppFab, AppNoData, AppTopAppBar;
import 'package:ios_samx/core/constant/strings.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/entities/relatives_list/relatives_list_response_data/relative/relative.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/get_relative_list/params/get_relatives_params.dart';
import 'package:ios_samx/feature/main_app/relatives/presentation/bloc/relatives_list/get_relative_bloc.dart';
import 'package:ios_samx/feature/main_app/relatives/presentation/bloc/relatives_type_list/relatives_type_list_bloc.dart';
import 'package:ios_samx/feature/main_app/relatives/presentation/widgets/relative_item_card.dart';
import 'package:ios_samx/feature/main_app/relatives/presentation/widgets/relative_list_loading.dart';
import 'package:ios_samx/feature/main_app/relatives/presentation/pages/add_relatives_screen.dart';
import 'package:ios_samx/injection_container.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:magicon/magicon.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class RelativeListScreen extends StatefulWidget {
  const RelativeListScreen({super.key});

  @override
  State<RelativeListScreen> createState() => _RelativeListScreenState();
}

class _RelativeListScreenState extends State<RelativeListScreen> {
  late String nationalCode;
  late GetRelativeBloc _getRelativeBloc;
  late RelativesTypeListBloc _relativesListBloc;
  List<Relative> relativesList = [];

  @override
  void initState() {
    super.initState();
    final Box box = Hive.box(Strings.appDBName);
    nationalCode = box.get("nationalId");
    _getRelativeBloc = sl<GetRelativeBloc>();
    _relativesListBloc = sl<RelativesTypeListBloc>();

    _getRelativeBloc.add(GetRelativeEvent.getRelativesEventCalled(
      params: GetRelativesParams(nationalCode: nationalCode),
    ));
    _relativesListBloc.add(RelativesTypeListEvent.relativesTypeListEventCalled(noParams: NoParams()));
  }

  @override
  Widget build(BuildContext context) {
    final width = ResponsiveLayout.getDeviceType(context);
    final colorTheme = context.colorTheme<CustomTheme>();
    return Scaffold(
      appBar: AppTopAppBar(
        title: "main.relatives".tr(),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      floatingActionButton: AppFab(
        isTitle: true,
        isPrimary: false,
        title: "main.new_relative".tr(),
        icon: Magicon.userPlusBottom,
        customWidth: 156,
        customHeight: 57,
        bgColor: colorTheme.layer,
        onPressed: () {
          Navigator.push(
              context,
              PageTransition(
                  child: AddRelativesScreen(
                    relativesList: relativesList,
                  ),
                  type: PageTransitionType.leftToRight));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: BlocProvider(
        create: (context) => _getRelativeBloc,
        child: BlocListener<RelativesTypeListBloc, RelativesTypeListState>(
          bloc: _relativesListBloc,
          listener: (context, state) {
            state.maybeWhen(
              loadFailure: (error) {
                showErrorWidget(context, error.code!, error.message!);
              },
              loadSuccess: (relativesEntities) {
                setState(() {
                  for (var element in relativesEntities.relativeListResponseData.items) {
                    relativesList.add(element);
                  }
                });
              },
              orElse: () {},
            );
          },
          child: BlocBuilder<GetRelativeBloc, GetRelativeState>(
              bloc: _getRelativeBloc,
              builder: (context, state) {
                return state.maybeWhen(
                  loading: () => RelativeListLoading(
                    isLoading: state is GetRelativeStateLoading,
                  ),
                  loadSuccess: (data) {
                    final itemsLength = data.relativeResponseData.length;
                    return switch (data.relativeResponseData) {
                      [] => AppNoData(
                          text: "main.empty_relative_msg".tr(),
                          imagePath: "assets/images/no_data.png",
                        ),
                      _ => Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            width: width * 0.9,
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  const SizedBox(height: 24),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'main.relatives_list'.tr(),
                                        style: TextTypography.labelLarge.copyWith(color: colorTheme.text),
                                      ),
                                      Text(
                                        '${itemsLength.toString().toPersianDigit()} ${'main.person'.tr()}',
                                        style: TextTypography.labelLarge.copyWith(color: colorTheme.textVariant),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 16),
                                  ListView.separated(
                                    physics: const ClampingScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: itemsLength,
                                    itemBuilder: (context, index) => RelativeItemCard(
                                      relative: data.relativeResponseData[index],
                                      relativesList: relativesList,
                                      isLast: index + 1 == itemsLength,
                                    ),
                                    separatorBuilder: (_, __) => const SizedBox(height: 16),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                    };
                  },
                  orElse: () => const SizedBox(),
                );
              }),
        ),
      ),
    );
  }
}
