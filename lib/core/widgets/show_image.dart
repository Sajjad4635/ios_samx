import 'package:ios_samx/core/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_network_image/flutter_network_image.dart';

import '../constant/app_style.dart';

// ignore: must_be_immutable
class FullScreenImageFile extends StatelessWidget {
  String imagePath;
  String imageName;
  String token;

  FullScreenImageFile({
    super.key,
    required this.imagePath,
    required this.imageName,
    required this.token,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: AppColors.darkGray,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'نمایش عکس',
            style: AppStyle.size18Weight700,
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
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
        body: GestureDetector(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Center(
                child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImageProvider(imagePath, headers: {
                      "Authorization": "Bearer $token",
                    }))
//              PhotoView.customChild(
//                minScale: PhotoViewComputedScale.contained * 0.8,
//                maxScale: PhotoViewComputedScale.covered * 1.8,
//                child: Image.file(
//                    File(imagePath)
////              fit: BoxFit.cover,
//                ),
//              )
//            Image.asset(imageUrl, fit: BoxFit.cover,),
                ),
          ),
        ),
      ),
    );
  }
}
