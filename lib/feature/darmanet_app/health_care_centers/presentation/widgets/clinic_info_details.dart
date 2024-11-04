import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:flutter/material.dart';
import '../../../../../core/constant/app_style.dart';

class ClinicInoDetails extends StatelessWidget {
  const ClinicInoDetails({
    super.key,
    required this.name,
    required this.value,
  });

  final String name;
  final String? value ;

  @override
  Widget build(BuildContext context) {

    final colorTheme = context.colorTheme<CustomTheme>();


    return Column(
      children: [
        const SizedBox(height: 8,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name, style: AppStyle.size12Weight400.copyWith(color: colorTheme.textVariant),),
            const SizedBox(width: 16,),
            Text( value ?? "" , textAlign: TextAlign.start, style: AppStyle.size12Weight600.copyWith(color: colorTheme.solidVariant), ),
           Container(color: Colors.red[400], width: 4 ,),
          ],
        ),
        const SizedBox(height: 8,),

      ],
    );
  }
}


