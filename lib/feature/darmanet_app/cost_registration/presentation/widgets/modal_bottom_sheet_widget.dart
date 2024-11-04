import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';

import '../../../../../core/constant/app_style.dart';
import '../../../../../core/widgets/button_primary.dart';

Future showMessage(BuildContext context, String message) {
  double width = ResponsiveLayout.getDeviceType(context);
  return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      builder: (context) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: SizedBox(
            width: width,
            height: MediaQuery.of(context).size.height * 0.35,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03),
                  child: Image(
                    width: width * 0.15,
                    height: MediaQuery.of(context).size.height * 0.05,
                    image: const AssetImage("assets/images/document_copy.png"),
                  ),
                ),
                /*       Text(
                  "required_documents".tr(),
                  textAlign: TextAlign.center,
                  style: AppStyle.size14Weight600.copyWith(color: Colors.black),
                ),*/
                Container(
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03),
                  width: width * 0.8,
                  child: Text(
                    message,
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: AppStyle.size14Weight400,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.05,
                      bottom: MediaQuery.of(context).size.height * 0.02),
                  child: ButtonPrimary(
                    title: "darmanet.read".tr(),
                    customHeight: 48,
                    customWidth: width * 0.8,
                    buttonLoading: false,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                )
              ],
            ),
          ),
        );
      });
}
