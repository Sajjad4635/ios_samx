import 'package:ios_samx/core/base_widget/app_snack_bar/index.dart';
import 'package:ios_samx/core/base_widget/index.dart' show AppButton, ButtonType, showAppBottomSheet;
import 'package:ios_samx/core/constant/strings.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/entities/relative/relative_response_data/relative_item_data.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/entities/relatives_list/relatives_list_response_data/relative/relative.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/entities/user_info/user_info_response_data/user_info_response_data.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/delete_relative/params/delete_relative_param.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/edit_relative/params/edit_relative_param.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/get_relative_list/params/get_relatives_params.dart';
import 'package:ios_samx/feature/main_app/relatives/presentation/bloc/delete_relative/delete_relative_bloc.dart';
import 'package:ios_samx/feature/main_app/relatives/presentation/bloc/edit_relative/edit_relative_bloc.dart';
import 'package:ios_samx/feature/main_app/relatives/presentation/bloc/relatives_list/get_relative_bloc.dart';
import 'package:ios_samx/feature/main_app/relatives/presentation/widgets/relative_type_bottomsheet.dart';
import 'package:ios_samx/feature/main_app/relatives/presentation/widgets/relative_item_card_item.dart';
import 'package:ios_samx/injection_container.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:magicon/magicon.dart';

class RelativeItemCard extends StatefulWidget {
  const RelativeItemCard({
    super.key,
    required this.relative,
    required this.relativesList,
    this.isLast = false,
  });

  final RelativeItemData relative;
  final bool? isLast;
  final List<Relative> relativesList;

  @override
  State<RelativeItemCard> createState() => _RelativeItemCardState();
}

class _RelativeItemCardState extends State<RelativeItemCard> {
  final UserInfoResponseData userInfo = const UserInfoResponseData();

  late String nationalCode;
  late DeleteRelativeBloc _deleteRelativeBloc;
  late GetRelativeBloc _getRelativeBloc;
  late EditRelativeBloc _editRelativeBloc;
  String relativeId = "";
  String selectedRelativeValue = "";

  @override
  void initState() {
    super.initState();
    _deleteRelativeBloc = sl<DeleteRelativeBloc>();
    _getRelativeBloc = sl<GetRelativeBloc>();
    _editRelativeBloc = sl<EditRelativeBloc>();
    final Box box = Hive.box(Strings.appDBName);
    nationalCode = box.get("nationalId");
  }

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();

    final fullName = "${widget.relative.relativeFirstName} ${widget.relative.relativeLastName}";

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => _deleteRelativeBloc,
        ),
        BlocProvider(
          create: (context) => _getRelativeBloc,
        ),
        BlocProvider(
          create: (context) => _editRelativeBloc,
        ),
      ],
      child: Container(
        height: 196,
        padding: const EdgeInsets.all(16),
        margin: EdgeInsets.only(bottom: widget.isLast! ? 20 : 0),
        decoration: BoxDecoration(color: colorTheme.layer, borderRadius: BorderRadius.circular(16)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  fullName,
                  style: TextTypography.titleSmall,
                ),
                IconButton(
                  onPressed: () {
                    onEditClick(fullName: fullName);
                  },
                  icon: const Icon(
                    Magicon.moreVertical,
                    size: 24,
                  ),
                )
              ],
            ),
            const Divider(),
            const SizedBox(height: 17),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RelativeItemCardItem(
                    title: 'strings.nationalCode'.tr(),
                    value: widget.relative.relativeNationalCode,
                  ),
                  RelativeItemCardItem(
                    title: 'strings.gender'.tr(),
                    value: widget.relative.genderKey == "Male" ? "main.man".tr() : "main.woman".tr(),
                  ),
                  RelativeItemCardItem(
                    title: 'main.relation'.tr(),
                    value: widget.relative.relativeTitle,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onDeleteRelativeClick({required String fullName}) async {
    final colorTheme = context.colorTheme<CustomTheme>();

    Navigator.pop(context);
    await showAppBottomSheet(
      context: context,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              'main.delete_relative'.tr(),
              style: TextTypography.titleSmall,
            ),
            const SizedBox(height: 16),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'main.delete_relative_confirmation_one'.tr(),
                    style: TextTypography.bodyMedium.copyWith(color: colorTheme.textVariant),
                  ),
                  TextSpan(
                    text: '“$fullName”',
                    style:
                        TextTypography.bodyMedium.copyWith(color: colorTheme.textVariant, fontWeight: FontWeight.w700),
                  ),
                  TextSpan(
                    text: 'main.delete_relative_confirmation_two'.tr(),
                    style: TextTypography.bodyMedium.copyWith(color: colorTheme.textVariant),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            BlocConsumer<DeleteRelativeBloc, DeleteRelativeState>(
              bloc: _deleteRelativeBloc,
              listener: (blocCtx, state) {
                state.maybeWhen(
                  loadFailure: (failure) {
                    showErrorWidget(context, failure.code, failure.message!);
                  },
                  loadSuccess: (deleteRelativeEntities) {
                    _getRelativeBloc.add(GetRelativeEvent.getRelativesEventCalled(
                      params: GetRelativesParams(nationalCode: nationalCode),
                    ));
                    Navigator.of(context).pop();
                    AppSnackBar.showSnackBar(
                        context: context,
                        type: SnackBarType.success,
                        title: 'main.confirm'.tr(),
                        message: "main.successfull_delete_relative_msg"
                            .tr(args: ["${widget.relative.relativeFirstName} ${widget.relative.relativeLastName}"]));
                  },
                  orElse: () {},
                );
              },
              builder: (blocCtx, state) {
                final bool loading = state is DeleteRelativeStateLoading;
                return AppButton(
                  buttonType: ButtonType.isFilled,
                  bgColor: colorTheme.error,
                  title: 'main.remove'.tr(),
                  buttonLoading: loading,
                  customHeight: 40,
                  customWidth: MediaQuery.of(blocCtx).size.width,
                  onPressed: () {
                    _deleteRelativeBloc.add(DeleteRelativeEvent.deleteRelativeEventCalled(
                        deleteRelativeParam:
                            DeleteRelativeParam(relativeId: widget.relative.id, nationalCode: nationalCode)));
                  },
                );
              },
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffF0F0F3),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "main.refuse".tr(),
                    style: TextTypography.labelLarge.copyWith(),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onEditClick({required String fullName}) async {
    await showAppBottomSheet(
      context: context,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
        child: Column(
          children: [
            Text(
              fullName,
              style: TextTypography.titleSmall,
            ),
            const SizedBox(height: 16),
            AppButton(
              buttonType: ButtonType.isSecondary,
              title: 'main.edit_relative'.tr(),
              customHeight: 40,
              customWidth: MediaQuery.of(context).size.width,
              onPressed: () async {
                for (var element in widget.relativesList) {
                  if (element.title == widget.relative.relativeTitle) {
                    relativeId = element.id;
                  }
                }
                await editRelationBottomSheet();
              },
            ),
            const SizedBox(height: 5),
            AppButton(
              buttonType: ButtonType.isSecondaryError,
              title: 'main.delete_relative'.tr(),
              customHeight: 40,
              customWidth: MediaQuery.of(context).size.width,
              onPressed: () {
                onDeleteRelativeClick(fullName: fullName);
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> editRelationBottomSheet() async {
    final colorTheme = context.colorTheme<CustomTheme>();
    await showModalBottomSheet(
        context: context,
        backgroundColor: colorTheme.white,
        isScrollControlled: true,
        builder: (context) {
          return BlocConsumer<EditRelativeBloc, EditRelativeState>(
              bloc: _editRelativeBloc,
              listener: (context, state) {
                state.maybeWhen(
                  loadFailure: (failure) {
                    showErrorWidget(context, failure.code, failure.message!);
                  },
                  loadSuccess: (deleteRelativeEntities) {
                    _getRelativeBloc.add(GetRelativeEvent.getRelativesEventCalled(
                      params: GetRelativesParams(nationalCode: nationalCode),
                    ));
                    Navigator.of(context).pop();
                    Navigator.of(context).pop();
                    AppSnackBar.showSnackBar(
                        context: context,
                        type: SnackBarType.success,
                        title: 'main.confirm'.tr(),
                        message: "main.successfull_edit_relative_msg"
                            .tr(args: ["${widget.relative.relativeFirstName} ${widget.relative.relativeLastName}"]));
                  },
                  orElse: () {},
                );
              },
              builder: (context, state) {
                if (selectedRelativeValue!.isNotEmpty) {
                  relativeId = selectedRelativeValue;
                }
                return RelativeTypeBottomSheet(
                  relativeIdCallback: (String relativeId) {
                    selectedRelativeValue = relativeId;
                  },
                  relativesList: widget.relativesList,
                  selectedValue: selectedRelativeValue!,
                  changesSubmitOnTap: () {
                    if (selectedRelativeValue!.isEmpty) {
                      selectedRelativeValue = relativeId;
                    }
                    _editRelativeBloc.add(EditRelativeEvent.editRelativeEventCalled(
                        editRelativeParam: EditRelativeParam(
                            nationalCode: nationalCode, id: widget.relative.id, relationId: selectedRelativeValue!)));
                  },
                );
              });
        }).then((value) {
      selectedRelativeValue = relativeId;
    });
  }
}
