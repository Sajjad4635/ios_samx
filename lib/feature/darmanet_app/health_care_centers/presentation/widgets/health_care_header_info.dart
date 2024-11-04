import 'package:flutter/material.dart';
import 'package:magicon/magicon.dart';
import 'health_center_row_title.dart';

class ClinicHeaderInfo extends StatelessWidget {
  const ClinicHeaderInfo({
    super.key,
    required this.title,
    required this.field,
    required this.city_city,
    required this.no,
    required this.onTap,
    required this.isExpanded,
  });

  final String title;
  final String field;
  final String city_city;
  final int no;
  final GestureTapCallback onTap;
  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              flex: 2,
              child: HealthCentersRowItem(
                  title: no.toString(), field: "", city: "", space: 1)),
          Expanded(
            flex: 9,
            child: HealthCentersRowItem(
                title: title, field: field, city: city_city, space: 32),
          ),
          Expanded(
            child: isExpanded
                ? const Icon(Magicon.angleUp)
                : const Icon(Magicon.angleDown),
          ),
          //Expanded(flex: 2 ,child: Container(child: Container(height: 8, width: 12, child: Image.asset('assets/png/angle_down.png'),))),
        ],
      ),
    );
  }
}
