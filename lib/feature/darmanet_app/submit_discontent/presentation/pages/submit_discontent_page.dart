import 'package:ios_samx/core/base_widget/index.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:ios_samx/core/widgets/text_form_field.dart';
import 'package:ios_samx/feature/darmanet_app/submit_discontent/domain/usecase/params/article/attacment/submit_discontent_attachment.dart';
import 'package:ios_samx/feature/darmanet_app/submit_discontent/domain/usecase/params/article/submit_discontent_article.dart';
import 'package:ios_samx/feature/darmanet_app/submit_discontent/domain/usecase/params/submit_discontent_params.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magicon/magicon.dart';
import 'package:page_transition/page_transition.dart';

import '../../../../../core/base_widget/app_top_app_bar/app_top_app_bar.dart';
import '../../../../../core/constant/app_style.dart';
import '../../../../../core/usecases/usecase.dart';
import '../../../../../injection_container.dart';
import '../../../../main_app/dashboard/presentation/pages/dashboard_screen.dart';
import '../../../../main_app/profile/domain/entities/get_profile/get_profile_response_data/get_profile_response_data.dart';
import '../../../../main_app/profile/presentaion/bloc/get_profile/get_profile_bloc.dart';
import '../../domain/usecase/params/ticket/submit_discontent_ticket.dart';
import '../bloc/submit_discontent_bloc.dart';

class SubmitDiscontentScreen extends StatefulWidget {
  const SubmitDiscontentScreen({super.key});

  @override
  State<SubmitDiscontentScreen> createState() => _SubmitDiscontentScreenState();
}

String? dropdownValue;
bool isTypedAnyThing = false;

class _SubmitDiscontentScreenState extends State<SubmitDiscontentScreen> {
  late SubmitDiscontentBloc _submitDiscontentBloc;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController controller = TextEditingController();

  List<QTT> qttList = [
    QTT(
      index: 0,
      type: "darmanet.qtt_type_zero".tr(),
      queue: "darmanet.qtt_queue_zero".tr(),
      title: "darmanet.qtt_title_zero".tr(),
    ),
    QTT(
      index: 1,
      type: "darmanet.qtt_type_one".tr(),
      queue: "darmanet.qtt_queue_one".tr(),
      title: "darmanet.qtt_title_one".tr(),
    ),
    QTT(
      index: 2,
      type: "darmanet.qtt_type_two".tr(),
      queue: "darmanet.qtt_queue_two".tr(),
      title: "darmanet.qtt_title_two".tr(),
    ),
  ];
  String selectedType = "";
  String selectedTitle = "";
  String selectedQueue = "";
  String content = "";
  String body = "";

  String natCode = "";
  String mobileNo = "";

  late GetProfileResponseData getProfileResponseData;
  late GetProfileBloc _getProfileBloc;

  @override
  void initState() {
    _getProfileBloc = sl<GetProfileBloc>();
    _submitDiscontentBloc = sl<SubmitDiscontentBloc>();
    _getProfileBloc.add(GetProfileEvent.getProfileEventCalled(noParams: NoParams()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = ResponsiveLayout.getDeviceType(context);
    final colorTheme = context.colorTheme<CustomTheme>();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => _getProfileBloc,
        ),
        BlocProvider(
          create: (context) => _submitDiscontentBloc,
        )
      ],
      child: WillPopScope(
        onWillPop: () async {
          Navigator.of(context).pushAndRemoveUntil(
              PageTransition(child: const DashboardScreen(), type: PageTransitionType.leftToRight), (route) => false);
          return false;
        },
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
              backgroundColor: Colors.white,
              appBar: AppTopAppBar(
                title: "darmanet.submit_complaint".tr(),
                isQrCode: false,
              ),
              body: Center(
                child: SafeArea(
                  child: SingleChildScrollView(
                    child: BlocConsumer<GetProfileBloc, GetProfileState>(
                      bloc: _getProfileBloc,
                      listener: (context, state) {
                        state.maybeWhen(
                          orElse: () {},
                          loadFailure: (failure) {
                            showErrorWidget(context, failure.code, failure.message!);
                          },
                          loadSuccess: (getProfileEntities) {
                            setState(() {
                              natCode = getProfileEntities.getProfileResponseData.nationalCode!;
                              mobileNo = getProfileEntities.getProfileResponseData.phoneNumber!;
                            });
                          },
                        );
                      },
                      builder: (context, state) {
                        return Form(
                          key: _formKey,
                          child: GestureDetector(
                            onTap: () {
                              FocusScope.of(context).unfocus();
                            },
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: width * 0.9,
                                    height: height * 0.9,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        Text(
                                          "darmanet.complaint_reason".tr(),
                                          style: AppStyle.size13Weight600,
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        DropdownButtonFormField(
                                          /*  validator: (value) {
                                            if(value.toString().isEmpty){
                                              return "علت شکایت انتخاب شود";
                                            }
                                            return null;
                                          },*/
                                          value: dropdownValue,
                                          isExpanded: true,
                                          autovalidateMode: AutovalidateMode.onUserInteraction,
                                          style: TextTypography.valueInputStyle,
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: colorTheme.bg,
                                            contentPadding: const EdgeInsets.symmetric(vertical: 12),
                                            isCollapsed: true,
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: colorTheme.error,
                                              ),
                                              borderRadius: const BorderRadius.all(Radius.circular(5)),
                                            ),
                                            disabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: colorTheme.solid,
                                              ),
                                              borderRadius: const BorderRadius.all(Radius.circular(5)),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: colorTheme.solid,
                                              ),
                                              borderRadius: const BorderRadius.all(Radius.circular(5)),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: colorTheme.solid,
                                              ),
                                            ),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: colorTheme.solid,
                                              ),
                                              borderRadius: const BorderRadius.all(Radius.circular(5)),
                                            ),
                                            errorStyle: TextStyle(
                                              fontFamily: "Pelak",
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400,
                                              color: colorTheme.error,
                                            ),
                                            hintText: "darmanet.please_select_option".tr(),
                                            hintStyle: TextTypography.labelStyle,
                                          ),
                                          items: qttList
                                              .map((value) => DropdownMenuItem(
                                                    value: value.index,
                                                    child: Container(
                                                      alignment: Alignment.centerRight,
                                                      child: Text(
                                                        value.title.toString(),
                                                        textDirection: TextDirection.ltr,
                                                        style: AppStyle.size12Weight600.copyWith(color: Colors.black),
                                                      ),
                                                    ),
                                                  ))
                                              .toList(),
                                          onChanged: (value) {
                                            setState(() {
                                              selectedType = qttList[int.parse(value.toString())].type;
                                              selectedTitle = qttList[int.parse(value.toString())].title;
                                              selectedQueue = qttList[int.parse(value.toString())].queue;
                                              isTypedAnyThing = true;
                                            });
                                          },
                                        ),
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        Text(
                                          "darmanet.description_without_colon".tr(),
                                          style: AppStyle.size13Weight600,
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        CustomTextFormField(
                                          controller: controller,
                                          errorMessage: "darmanet.presentation_of_explanations_is_required".tr(),
                                          maxLine: 7,
                                          maxLength: 250,
                                          fillColor: colorTheme.bg,
                                          enableBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: colorTheme.solid,
                                            ),
                                            borderRadius: const BorderRadius.all(Radius.circular(5)),
                                          ),
                                        ),
                                        const Spacer(),
                                        BlocConsumer<SubmitDiscontentBloc, SubmitDiscontentState>(
                                          builder: (context, state) {
                                            final buttonLoading = state is SubmitDiscontentStateLoading;

                                            return Center(
                                              child: AppButton(
                                                title: "darmanet.send".tr(),
                                                style: AppStyle.size15Weight600.copyWith(color: Colors.white),
                                                leftIcon: context.locale == const Locale('fa')
                                                    ? Magicon.angleLeft
                                                    : Magicon.angleRight,
                                                customWidth: width * 0.9,
                                                customHeight: 48,
                                                onPressed: isTypedAnyThing &&
                                                        controller.text.toString().isNotEmpty &&
                                                        selectedType.isNotEmpty
                                                    ? () {
                                                        setState(() {
                                                          if (_formKey.currentState!.validate()) {
                                                            String b1 = "darmanet.user_with_national_code".tr();
                                                            String b2 = natCode;
                                                            String b3 =
                                                                "${"darmanet.user_with_national_code".tr()}${"darmanet.and".tr()}$mobileNo";
                                                            String b4 = "${"darmanet.value".tr()}$selectedTitle";

                                                            String b5 = "darmanet.has_as_follows".tr();
                                                            String b6 = controller.text.toString();
                                                            // print("BODY = $b1$b2$b3$b4$b5$b6");
                                                            _submitDiscontentBloc = sl<SubmitDiscontentBloc>();
                                                            _submitDiscontentBloc.add(
                                                              SubmitDiscontentEvent.submitDiscontentEventCalled(
                                                                SubmitDiscontentParams(
                                                                  sessionId: "d54twOjLc6s0j82vLpS8wRe8qd7AZBIW",
                                                                  ticket: Ticket(
                                                                      type: selectedType,
                                                                      title: selectedTitle,
                                                                      queue: selectedQueue,
                                                                      customerUser: "SamX@samaninsurance.ir",
                                                                      stateId: "1",
                                                                      priority: "5 very high",
                                                                      lock: "unlock",
                                                                      ownerID: 1),
                                                                  article: Article(
                                                                      articleTypeID: 1,
                                                                      subject: selectedType,
                                                                      senderTypeID: 1,
                                                                      body: b1 + b2 + b3 + b4 + b5 + b6,
                                                                      contentType: "text/plain; charset=utf8",
                                                                      charset: "utf8",
                                                                      mimeType: "text/plain",
                                                                      from: "SamX@samaninsurance.ir",
                                                                      attachment: const Attachment(
                                                                          content: '',
                                                                          contentType: "text/plain",
                                                                          fileName: '')),
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                        });
                                                      }
                                                    : null,
                                                buttonLoading: buttonLoading,
                                                buttonType: ButtonType.isFilled,
                                              ),
                                            );
                                          },
                                          listener: (context, state) => state.maybeWhen(
                                            orElse: () {
                                              return null;
                                            },
                                            loadFailure: (failure) {
                                              showErrorWidget(context, failure.code, failure.message!);
                                              return null;
                                            },
                                            loadSuccess: (submitDiscontentEntity) {
                                              Navigator.of(context).pushAndRemoveUntil(
                                                  PageTransition(
                                                      child: const DashboardScreen(),
                                                      type: PageTransitionType.leftToRight),
                                                  (route) => false);
                                              showInfoWidget(
                                                context,
                                                "darmanet.complaint_success_and_contact".tr(),
                                              );
                                              return null;
                                            },
                                          ),
                                          bloc: _submitDiscontentBloc,
                                        ),
                                        const SizedBox(
                                          height: 12,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              )),
        ),
      ),
    );
  }
}

/// Queue Type Title
class QTT {
  final int index;
  final String queue;
  final String type;
  final String title;

  QTT({
    required this.index,
    required this.queue,
    required this.type,
    required this.title,
  });
}
