import 'package:ios_samx/core/constant/app_colors.dart';
import 'package:ios_samx/core/constant/app_style.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:ios_samx/core/widgets/button_primary.dart';
import 'package:ios_samx/core/widgets/text_form_field.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/usecase/iban_inquiry/params/iban_inquiry_param.dart';
import 'package:ios_samx/feature/cplife_app/loan/presentation/bloc/iban_inquiry/iban_inquiry_bloc.dart';
import 'package:ios_samx/injection_container.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IbanScreen extends StatefulWidget {
  const IbanScreen({super.key});

  @override
  State<IbanScreen> createState() => _IbanScreenState();
}

class _IbanScreenState extends State<IbanScreen> {
  TextEditingController ibanController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  late IbanInquiryBloc _ibanInquiryBloc;

  @override
  void initState() {
    _ibanInquiryBloc = sl<IbanInquiryBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return BlocProvider(
      create: (context) => _ibanInquiryBloc,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: AppColors.darkGray,
            elevation: 0,
            centerTitle: true,
            title: Text(
              'main.iban_screen_title'.tr(),
              style: AppStyle.size18Weight700,
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
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
          body: SizedBox(
            width: double.infinity,
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: height * 0.05,
                  ),
                  CustomTextFormField(
                    controller: ibanController,
                    title: "main.enter_iban_number".tr(),
                    hint: "",
                    customWidth: width * 0.9,
                    errorMessage: "main.iban_mismatch_error".tr(),
                    keyboardType: TextInputType.number,
                    suffix: Container(
                        width: 50,
                        alignment: Alignment.center,
                        child: const Text(
                          "IR",
                          style: AppStyle.size15Weight400LightWhite,
                        )),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  const Spacer(),
                  BlocConsumer<IbanInquiryBloc, IbanInquiryState>(
                    listener: (context, state) {
                      state.maybeWhen(
                        loadFailure: (failure) {
                          showErrorWidget(context, failure.code, failure.message!);
                        },
                        loadSuccess: (WalletPaymentResponseEntities) {},
                        orElse: () {},
                      );
                    },
                    builder: (context, state) {
                      final loading = state is IbanInquiryStateLoading;
                      return ButtonPrimary(
                        title: "main.confirm".tr(),
                        buttonLoading: loading,
                        customWidth: width * 0.9,
                        customHeight: 48,
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _ibanInquiryBloc = sl<IbanInquiryBloc>();
                            _ibanInquiryBloc.add(IbanInquiryEvent.ibanInquiryEventCalled(
                                IbanInquiryParam(ibanNumber: ibanController.text)));
                          }
                        },
                      );
                    },
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
