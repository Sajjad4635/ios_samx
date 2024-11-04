// import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
// import 'package:ios_samx/core/widgets/simple_rounded_container.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:magicon/magicon.dart';
// import 'package:persian_number_utility/persian_number_utility.dart';
//
// import '../../../../../core/base_widget/app_auto_height_grid_view/app_auto_height_grid_view.dart';
// import '../../../../../core/base_widget/app_text_field/app_text_field.dart';
// import '../../../../../core/constant/theme/custom_theme.dart';
// import '../../../../../core/constant/theme/typography.dart';
// import '../../../../../core/responsive/responsive_layout.dart';
//
// class PlateRawWidget extends StatefulWidget {
//   const PlateRawWidget({
//     super.key,
//   });
//
//   @override
//   State<PlateRawWidget> createState() => _PlateRawWidgetState();
// }
//
// class _PlateRawWidgetState extends State<PlateRawWidget> {
//   TextEditingController cntRegion = TextEditingController();
//   TextEditingController cntSegment1 = TextEditingController();
//   TextEditingController cntSegment2 = TextEditingController();
//   dynamic letter;
//
//   List plateLetter = [
//     'الف',
//     'ب',
//     'پ',
//     'ت',
//     'ث',
//     'ج',
//     'د',
//     'ز',
//     'س',
//     'ش',
//     'ص',
//     'ط',
//     'ع',
//     'ف',
//     'ق',
//     'ک',
//     'گ',
//     'ل',
//     'م',
//     'ن',
//     'و',
//     'ه',
//     'ی',
//     'D',
//     'S',
//     Magicon.lightEmergency
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     final width = ResponsiveLayout.getDeviceType(context);
//     final colorTheme = context.colorTheme<CustomTheme>();
//     return
//       SimpleRoundedContainer(
//       width: width * 0.9,
//       height: height * 0.15,
//       bgColor: colorTheme.layer,
//       borderColor: colorTheme.borders,
//       borderRadius: 8.0,
//       widget: Padding(
//         padding: const EdgeInsets.only(top: 8.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(right: 6.0, top: 10.0),
//               child: AppTextField(
//                 customWidth: width * 0.15,
//                 customHeight: height * 0.2,
//                 controller: cntRegion,
//                 maxLength: 2,
//                 isNumber: true,
//                 label: 'vehicle.iran'.tr(),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 10.0),
//               child: AppTextField(
//                 customWidth: width * 0.16,
//                 customHeight: height * 0.2,
//                 controller: cntSegment1,
//                 isNumber: true,
//                 maxLength: 3,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 10.0),
//               child: InkWell(
//                   onTap: () {
//                     plateNumberLetterBottomSheet(
//                       context: context,
//                       colorTheme: colorTheme,
//                       width: width,
//                     );
//                   },
//                   child: SimpleRoundedContainer(
//                     width: width * 0.20,
//                     height: height * 0.1,
//                     bgColor: colorTheme.white,
//                     borderRadius: 8.0,
//                     borderColor: colorTheme.borders,
//                     widget: Text(letter.toString()),
//                   )),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 10.0),
//               child: AppTextField(
//                 customWidth: width * 0.16,
//                 customHeight: height * 0.2,
//                 controller: cntSegment2,
//                 maxLength: 2,
//                 isNumber: true,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 6.0, bottom: 12.0),
//               child: Image(
//                 width: width * 0.13,
//                 image: const AssetImage(
//                   "assets/images/raw_plate.png",
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Future plateNumberLetterBottomSheet({
//     required BuildContext context,
//     required CustomTheme colorTheme,
//     required double width,
//   }) {
//     return showModalBottomSheet(
//         context: context,
//         constraints: BoxConstraints(
//           maxWidth: width,
//         ),
//         backgroundColor: colorTheme.layer,
//         isScrollControlled: true,
//         shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(25),
//             topRight: Radius.circular(25),
//           ),
//         ),
//         builder: (context) {
//           return Container(
//             color: colorTheme.layer,
//             margin: EdgeInsets.only(
//               top: MediaQuery.of(context).size.height * 0.05,
//               left: MediaQuery.of(context).size.width * 0.05,
//               right: MediaQuery.of(context).size.width * 0.05,
//             ),
//             child: SingleChildScrollView(
//               child: Column(
//                 children: [
//                   Container(
//                     color: colorTheme.layer,
//                     alignment: Alignment.topRight,
//                     margin: EdgeInsets.only(
//                         bottom: MediaQuery.of(context).size.width * 0.03),
//                     child: Text(
//                       'vehicle.plate_letter'.tr(),
//                       style: TextTypography.titleMedium
//                           .copyWith(color: colorTheme.text),
//                     ),
//                   ),
//                   Container(
//                     width: width * 0.9,
//                     margin: const EdgeInsets.only(top: 16, bottom: 16),
//                     color: colorTheme.layer,
//                     child: AutoHeightGridView(
//                       shrinkWrap: true,
//                       crossAxisCount: 4,
//                       physics: const NeverScrollableScrollPhysics(),
//                       itemCount: plateLetter.length,
//                       builder: (BuildContext ctx, int index) {
//                         return GestureDetector(
//                           onTap: () {
//                             setState(() {
//                               letter = plateLetter[index];
//                               Navigator.pop(context);
//                             });
//                           },
//                           child: SimpleRoundedContainer(
//                             width: width * 0.1,
//                             height: MediaQuery.of(context).size.height * 0.05,
//                             bgColor: colorTheme.intComponents,
//                             borderColor: Colors.transparent,
//                             borderRadius: 8.0,
//                             widget: Center(
//                               child: index == plateLetter.length - 1
//                                   ? Icon(plateLetter[index])
//                                   : Text(plateLetter[index],
//                                       style: (TextTypography.titleMedium
//                                           .copyWith(color: colorTheme.text))),
//                             ),
//                           ),
//                         );
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         });
//   }
// }
