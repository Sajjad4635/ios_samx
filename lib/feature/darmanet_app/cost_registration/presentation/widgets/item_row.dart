import 'package:flutter/material.dart';

import '../../../../../core/constant/app_style.dart';

// ignore: must_be_immutable
class ItemRow extends StatelessWidget {
  ItemRow(
      {super.key,
      required this.height,
      required this.width,
      required this.title,
      required this.description,
      required this.imagePath,
      this.onTap});

  final double height;
  final double width;
  final String title;
  final String description;
  final String imagePath;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          color: Colors.white,
          height: height / 14,
          width: width / 1.09,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: height / 2,
                width: width / 7,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(imagePath),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: SizedBox(
                  width: width / 1.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: AppStyle.size14Weight600.copyWith(fontSize: 13),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        description,
                        style: AppStyle.size12Weight300.copyWith(color: const Color.fromRGBO(53, 57, 63, 1)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: width / 15,
                child: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.blueAccent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
