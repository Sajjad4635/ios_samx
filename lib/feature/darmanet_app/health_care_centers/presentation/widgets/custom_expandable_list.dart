import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import '../../../../../core/constant/theme/custom_theme.dart';
import 'clinic_info_details.dart';
import 'health_care_header_info.dart';

class CustomExpandableList extends StatelessWidget {
  const CustomExpandableList({super.key, required this.clinics});

  final List<ClinicInfo> clinics;

  @override
  Widget build(BuildContext context) {
    return
      SliverList(
        delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
              return CustomExpandableListItem(clinic: clinics[index]);
            },
            childCount: clinics.length
        ),
      );
  }
}

class CustomExpandableListItem extends StatefulWidget {
  const CustomExpandableListItem({
    super.key,
    required this.clinic,
  });
  final ClinicInfo clinic;

  @override
  State<CustomExpandableListItem> createState() =>
      _CustomExpandableListItemState();
}

class _CustomExpandableListItemState extends State<CustomExpandableListItem> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final colorTheme = context.colorTheme<CustomTheme>();
    return Column(
      children: [
        Column(
          children: [
            const SizedBox(
              height: 8,
            ),
            ClinicHeaderInfo(
              title: widget.clinic.name,
              city_city: widget.clinic.city_city,
              field: widget.clinic.type,
              no: widget.clinic.id,
              onTap: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
              isExpanded: isExpanded,
            ),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
        if (isExpanded)
          Container(
              height: height / 3,
              color: colorTheme.borders,
              child: Row(
                children: [
                  Container(
                    color: colorTheme.primary,
                    width: 3,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClinicInoDetails(
                          name: "darmanet.clinic_type".tr(),
                          value: widget.clinic.type),
                      const Spacer(),
                      ClinicInoDetails(
                          name: "darmanet.clinic_code".tr(),
                          value: widget.clinic.code
                              .toStringAsFixed(0)
                              .toPersianDigit()),
                      const Spacer(),
                      ClinicInoDetails(
                          name: "darmanet.clinic_province".tr(),
                          value: widget.clinic.province ?? ""),
                      const Spacer(),
                      ClinicInoDetails(
                          name: "darmanet.clinic_city".tr(),
                          value: widget.clinic.city),
                      const Spacer(),
                      ClinicInoDetails(
                          name: "darmanet.clinic_tel".tr(),
                          value: widget.clinic.tel.toPersianDigit()),
                      const Spacer(),
                      //ClinicInoDetails(name: "آدرس:",     value: convertOneLineToMultiLines( "تهران-کوهک-بلوار علیمردانی-انتهای نسیم هشتم-   مجتمع او پارک چیتگر شمالی جنوبی")),
                      ClinicInoDetails(
                          name: "darmanet.clinic_address".tr(),
                          value: convertOneLineToMultiLines(
                              widget.clinic.address.trim())),
                      const Spacer(),
                    ],
                  )
                ],
              ))
      ],
    );
  }
}

class ClinicInfo {
  int id;
  String name;
  String city_city;
  String serviceName;
  String type;
  double code;
  String? province;
  String city;
  String tel;
  String address;
  bool isExpanded;

  ClinicInfo(
      {required this.id,
      required this.name,
      required this.city_city,
      required this.serviceName,
      required this.type,
      required this.code,
      required this.province,
      required this.city,
      required this.tel,
      required this.address,
      required this.isExpanded});
}

String convertOneLineToMultiLines(String input) {
  List<String> words = input.replaceAll("-", " ، ").split(" ");
  int counter = 0;
  String finalString = "";
  int limiter = 35;
  for (int i = 0; i < words.length; i += 1) {
    if (counter <= limiter) {
      counter += words[i].length;
      finalString += words[i];
      finalString += " ";
    } else {
      finalString += "\n";
      finalString += "${words[i]} ";
      counter = 0;
      limiter = limiter - 5;
    }
  }
  // print("XXXXXXXX = $finalString");
  return finalString;
}
