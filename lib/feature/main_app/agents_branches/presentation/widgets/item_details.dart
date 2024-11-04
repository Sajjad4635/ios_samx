import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import '../../../../../core/constant/app_style.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.title, required this.value  });

  final String title ;
  final String value ;


  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(width: 16,),
        Align(
            alignment:  Alignment.topCenter,
            child: Text(title.toPersianDigit(), style: AppStyle.size13Weight400.copyWith(color: colorTheme.solidVariant),)),
          const SizedBox(width: 16,),  
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.65,
          child: Text(value.toPersianDigit(), style: AppStyle.size13Weight400.copyWith(color: colorTheme.solidVariant),  textAlign: TextAlign.start ,)),
        const Spacer(flex: 4,),
      ],
    );
  }
}