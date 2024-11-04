import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class LoadingList extends StatelessWidget {
  final bool isIban;

  const LoadingList({super.key, this.isIban = true});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context)
        .size
        .height;
    return Skeletonizer(
      enabled: true,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
          ListView.builder(
          shrinkWrap: true,
          itemCount: 3,
          itemBuilder: (context, index) =>
              Skeleton.leaf(
                child: isIban
                    ? Container(
                  margin: const EdgeInsets.symmetric(vertical: 12),
                  height: height * 0.1,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        8,
                      ),
                    ),
                  ),                )
                    : Container(
                  margin: const EdgeInsets.symmetric(vertical: 12),
                  height: 160,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        16,
                      ),
                    ),
                  ),
                ),
              ),)
          ],
        ),
      ),
    );
  }
}
