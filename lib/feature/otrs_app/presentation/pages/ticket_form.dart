import 'package:ios_samx/core/constant/app_colors.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/feature/otrs_app/presentation/pages/ticketing_login.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ios_samx/core/widgets/button_primary.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:ios_samx/feature/otrs_app/domain/usecase/confirm/params/article/ticketing_confirm_article.dart';
import 'package:ios_samx/feature/otrs_app/domain/usecase/confirm/params/ticketing_confirm_ticket_params.dart';
import 'package:ios_samx/feature/otrs_app/presentation/bloc/confirm/ticketing_confirm_bloc.dart';
import 'package:ios_samx/feature/otrs_app/presentation/pages/ticketing_list.dart';
import 'package:ios_samx/injection_container.dart';
import 'package:hive/hive.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import '../../../../core/constant/app_style.dart';
import '../../../../core/constant/strings.dart';
import '../../../../core/widgets/text_form_field.dart';
import '../../../main_app/dashboard/presentation/pages/dashboard_screen.dart';
import '../../domain/usecase/confirm/params/article/attachment/ticketing_confirm_attachment.dart';
import '../../domain/usecase/confirm/params/ticket/ticketing_confirm_ticket.dart';

class NewTicketFormScreen extends StatefulWidget {
  const NewTicketFormScreen({super.key, required this.sessionID, required this.customerUser});

  final String sessionID;
  final String customerUser;

  @override
  _NewTicketFormScreenState createState() => _NewTicketFormScreenState();
}

class _NewTicketFormScreenState extends State<NewTicketFormScreen> {
  late TicketingConfirmBloc _ticketingConfirmBloc;
  final _formKey = GlobalKey<FormState>();
  Box box = Hive.box(Strings.appDBName);

  final TextEditingController subjectController = TextEditingController();
  final TextEditingController bodyController = TextEditingController();
  final _multiKey = GlobalKey<DropdownSearchState<String>>();

/*  List<String> types = [
    '   Incident       ',
    '   Incident::Major',
    '   Problem        ',
    '   RfC            ',
    '   ServiceRequest ',
    '   Unclassified   '
  ];*/
  List<String> types = [
    /*1*/ 'otrs.uncategorized'.tr(),
    /*2*/ 'otrs.change_request'.tr(),
    /*4*/ 'otrs.incident'.tr(),
    /*5*/ 'otrs.important_incident'.tr(),
    /*6*/ 'otrs.information_technology_service'.tr(),
    /*7*/ 'otrs.issue_error'.tr(),
    /*9*/ 'otrs.technology_service'.tr(),
    /*10*/ 'otrs.human_capital'.tr(),
    /*11*/ 'otrs.welfare_services'.tr(),
    /*12*/ 'otrs.salary_wages'.tr(),
  ];
  List<String> typesID = [
    "1",
    "2",
    "4",
    "5",
    "6",
    "7",
    "9",
    "10",
    "11",
    "12",
  ];

/*  List<String> queues = [
    '   IT::Data                        ',
    '   IT::Data::Warehouse             ',
    '   IT::Opration                    ',
    '   IT::Analysis                    ',
    '   IT                              ',
    '   IT::Opration::Support           ',
    '   IT::Opration::Infra             ',
    '   IT::Opration::Support::NOC      ',
    '   IT::Opration::Support::Helpdesk ',
    '   IT::Opration::Infra::Network    ',
    '   IT::Opration::Infra::Hardware   ',
    '   IT::Opration::Infra::DevOps     ',
    '   IT::Opration::Infra::DataCenter ',
    '   IT::Opration::SecurityOps       ',
    '   IT::Analysis::DOCandPMO         ',
    '   IT::SwDev                       ',
    '   IT::SwDev::Backend              ',
    '   IT::SwDev::Frontend             ',
    '   IT::SwDev::UI UX                ',
    '   IT::SwDev::MobileApp            ',
    '   IT::Analysis::PO                ',
    '   IT::Data::DataAnalysis          ',
    '   ITSecurity                      '
  ];
  */
  List<String> priorities = [
    '   1 very low',
    '   2 Low',
    '   3 normal',
    '   4 high',
    '   5 very high',
  ];

  String? selectedTypeId = "";

  //String selectedQueue = 'IT::Opration::Support::Helpdesk';
  String selectedPriorityId = "2";

  String subject = "Subject";
  String content = "Content";

  @override
  void initState() {
    _ticketingConfirmBloc = sl<TicketingConfirmBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double width = ResponsiveLayout.getDeviceType(context);

    return PopScope(
      canPop: true,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: AppColors.darkGray,
            elevation: 0,
            centerTitle: true,
            title: Text(
              'otrs.support_title'.tr(),
              style: AppStyle.size18Weight700,
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    PageTransition(child: const DashboardScreen(), type: PageTransitionType.leftToRight),
                    (route) => false);
              },
              icon: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.arrow_back,
                  color: AppColors.lightGrey,
                ),
              ),
            ),
          ),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 8, right: 8),
              child: Center(
                child: SizedBox(
                  width: width * 0.9,
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(children: [
                          Expanded(
                              flex: 1,
                              child: Text(
                                "otrs.ticket_type".tr(),
                                style: AppStyle.size16Weight500,
                              )),
                          Expanded(
                            flex: 3,
                            child: Align(
                              alignment: Alignment.center,
                              child: DropdownSearch<String>(
                                key: _multiKey,
                                items: types,
                                autoValidateMode: AutovalidateMode.onUserInteraction,
                                validator: (String? i) {
                                  if (i == null) {
                                    return 'otrs.select_ticket_type'.tr();
                                  }
                                  return null;
                                },
                                clearButtonProps: const ClearButtonProps(isVisible: true),
                                onChanged: (value) {
                                  selectedTypeId = typesID[types.indexOf(value.toString())];
                                  // print("selectedTypeId = $selectedTypeId");
                                },
                              ),
                            ),
                          ),
                        ]),
                        const SizedBox(
                          height: 8,
                        ),

                        Row(children: [
                          Expanded(
                              flex: 1,
                              child: Text(
                                "otrs.priority_without_colon".tr(),
                                style: AppStyle.size16Weight500,
                              )),
                          Expanded(
                              flex: 3,
                              child: DropdownSearch<String>(
                                items: priorities,
                                onChanged: (value) {
                                  if (value != null) {
                                    int index = priorities.indexOf(value.toString());
                                    ++index;
                                    selectedPriorityId = index.toString();
                                    //  print("selectedPriorityId $selectedPriorityId");
                                  }
                                },
                              )),
                        ]),
                        //---
                        const SizedBox(
                          height: 8,
                        ),
                        Row(children: [
                          Expanded(
                              flex: 1,
                              child: Text(
                                "otrs.subject".tr(),
                                style: AppStyle.size16Weight500,
                              )),
                          Expanded(
                            flex: 3,
                            child: CustomTextFormField(
                              controller: subjectController,
                              errorMessage: "otrs.enter_subject",
                              hint: "otrs.subject_hint".tr(),
                              maxLength: 30,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "otrs.enter_subject".tr();
                                }
                                return null;
                              },
                            ),
                          ),
                        ]),
                        //---

                        const SizedBox(
                          height: 16,
                        ),
                        CustomTextFormField(
                          controller: bodyController,
                          hint: "otrs.additional_description".tr(),
                          errorMessage: "otrs.enter_additional_description".tr(),
                          maxLine: 5,
                          maxLength: 250,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "otrs.enter_additional_description".tr();
                            }
                            return null;
                          },
                        ),

                        const SizedBox(
                          height: 16,
                        ),

                        BlocConsumer<TicketingConfirmBloc, TicketingConfirmState>(
                          bloc: _ticketingConfirmBloc,
                          listener: (context, state) => state.maybeWhen(
                              orElse: () {
                                return null;
                              },
                              loadFailure: (failure) => {
                                    box.put(Strings.otrsAfterLogin, Strings.otrsNewTicket),
                                    Navigator.push(
                                      context,
                                      PageTransition(
                                        child: const TicketingLoginScreen(),
                                        type: PageTransitionType.rightToLeft,
                                      ),
                                    ),
                                    showErrorWidget(
                                        context,
                                        failure.code,
                                        failure.message!.toString().contains(" User could not be authenticated!")
                                            ? "otrs.login_again".tr()
                                            : failure.message!)
                                  },
                              loadSuccess: (ticketingConfirmResponseEntity) => {
                                    showSuccessWidget(
                                        context,
                                        "otrs.Success_message".tr(args: [
                                          (ticketingConfirmResponseEntity.confirmResponseData.ticketNumber
                                              .toPersianDigit()),
                                        ]),
                                        //  "تیکت شما با شماره ${ticketingConfirmResponseEntity.confirmResponseData.ticketNumber} ثبت شد",
                                        () {
                                      Navigator.pushReplacement(
                                        context,
                                        PageTransition(
                                          child: TicketingListScreen(
                                            sessionID: widget.sessionID,
                                            userLogin: widget.customerUser,
                                          ),
                                          type: PageTransitionType.rightToLeft,
                                        ),
                                      );
                                    })
                                  }),
                          builder: (context, state) {
                            final buttonLoading = state is TicketingConfirmStateLoading;
                            return ButtonPrimary(
                              title: "otrs.send_ticket".tr(),
                              customHeight: 48,
                              customWidth: width * 0.9,
                              buttonLoading: buttonLoading,
                              onPressed: () {
                                setState(() {
                                  if (_formKey.currentState!.validate()) {
                                    _ticketingConfirmBloc = sl<TicketingConfirmBloc>();
                                    _ticketingConfirmBloc.add(
                                      TicketingConfirmEvent.ticketingConfirmEventCalled(
                                        TicketingConfirmParams(
                                          ticket: Ticket(
                                            typeId: selectedTypeId!,
                                            title: subjectController.value.text.isNotEmpty
                                                ? subjectController.value.text
                                                : subject,
                                            queueId: "9",
                                            customerUser: "${widget.customerUser}@samaninsurance.ir",
                                            stateId: "1",
                                            priorityId: selectedPriorityId,
                                            ownerID: 1,
                                            lock: "unlock",
                                          ),
                                          article: Article(
                                              articleTypeID: 1,
                                              senderTypeID: 1,
                                              subject: subjectController.value.text.isNotEmpty
                                                  ? subjectController.value.text
                                                  : subject,
                                              body: bodyController.value.text.isNotEmpty
                                                  ? bodyController.value.text
                                                  : content,
                                              contentType: "text/plain; charset=utf8",
                                              charset: "utf8",
                                              mimeType: "text/plain",
                                              from: "${widget.customerUser}@samaninsurance.ir",
                                              attachment: const Attachment(
                                                  content: "", contentType: "text/plain", fileName: "a.txt")),
                                          sessionID: widget.sessionID,
                                        ),
                                      ),
                                    );
                                  }
                                });
                              },
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
