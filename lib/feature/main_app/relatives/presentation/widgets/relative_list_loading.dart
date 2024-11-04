import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/entities/relative/relative_response_data/relative_item_data.dart';
import 'package:ios_samx/feature/main_app/relatives/presentation/widgets/relative_item_card.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class RelativeListLoading extends StatelessWidget {
 final bool isLoading;
  const RelativeListLoading({super.key , required this.isLoading});

  @override
  Widget build(BuildContext context) {
    final width = ResponsiveLayout.getDeviceType(context);
    return SingleChildScrollView(
      child: Skeletonizer(
          enabled: isLoading,
          child: Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: width * 0.9,
              child: Column(
                children: [
                  const SizedBox(height: 24),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'test test',
                      ),
                      Text(
                        'test',
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  ListView.separated(
                    physics: const ClampingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) =>  const RelativeItemCard(
                      relativesList: [],
                      relative: RelativeItemData(
                        id: '',
                        relativeTitle: 'test test',
                        relativeNationalCode: 'testteste',
                        relativeFirstName: 'test test',
                        relativeLastName: 'test',
                        relativeFatherName: 'test',
                        genderKey: '',
                      ),
                    ),
                    separatorBuilder: (_, __) => const SizedBox(height: 16),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
