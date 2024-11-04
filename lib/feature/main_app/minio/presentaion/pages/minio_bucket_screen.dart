import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/extensions/convert_date.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:ios_samx/feature/main_app/minio/domain/entities/get_bucket/get_bucket_response_data/bucket_response/bucket_response.dart';
import 'package:ios_samx/feature/main_app/minio/domain/usecase/get_bucket/param/get_bucket_param.dart';
import 'package:ios_samx/feature/main_app/minio/presentaion/bloc/get_bucket/get_bucket_bloc.dart';
import 'package:ios_samx/feature/main_app/minio/presentaion/pages/minio_object_screen.dart';
import 'package:ios_samx/injection_container.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:ios_samx/core/base_widget/index.dart' show AppTopAppBar, AppEffect;

import '../../../../../core/responsive/responsive_layout.dart';

class MinioBucketScreen extends StatefulWidget {
  const MinioBucketScreen({
    super.key,
    required this.accessKeyId,
    required this.secretAccessKey,
    required this.sessionToken,
  });

  final String accessKeyId;
  final String secretAccessKey;
  final String sessionToken;

  @override
  State<MinioBucketScreen> createState() => _MinioBucketScreenState();
}

class _MinioBucketScreenState extends State<MinioBucketScreen> {
  late GetBucketBloc _getBucketBloc;
  List<BucketResponse> buckets = [];

  @override
  void initState() {
    _getBucketBloc = sl<GetBucketBloc>();
    _getBucketBloc.add(GetBucketEvent.getBucketEventCalled(GetBucketParam(
        accessKeyId: widget.accessKeyId,
        secretAccessKey: widget.secretAccessKey,
        sessionToken: widget.sessionToken)));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = ResponsiveLayout.getDeviceType(context);
    final height = MediaQuery.of(context).size.height;
    final colorTheme = context.colorTheme<CustomTheme>();

    return Scaffold(
      backgroundColor: colorTheme.bg,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(64.0),
        child: AppTopAppBar(
          title: 'main.drive'.tr(),
        ),
      ),
      body: BlocProvider(
        create: (context) => _getBucketBloc,
        child: BlocConsumer<GetBucketBloc, GetBucketState>(
          bloc: _getBucketBloc,
          listener: (context, state) {
            state.maybeWhen(
              loadFailure: (error) {
                showErrorWidget(context, error.code!, error.message!);
              },
              loadSuccess: (getBucketEntities) {
                setState(() {
                  buckets = getBucketEntities.getBucketResponseData.buckets;
                });
              },
              orElse: () {},
            );
          },
          builder: (context, state) {
            final loading = state is GetBucketStateLoading;
            return loading
                ? Container(
                    alignment: Alignment.center,
                    child: const CircularProgressIndicator(),
                  )
                : Center(
                    child: SizedBox(
                      width: width,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: CustomScrollView(
                          slivers: [
                            SliverList(
                              delegate: SliverChildBuilderDelegate(
                                  (BuildContext context, int index) {
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      PageTransition(
                                        child: MinioObjectScreen(
                                          accessKeyId: widget.accessKeyId,
                                          secretAccessKey:
                                              widget.secretAccessKey,
                                          sessionToken: widget.sessionToken,
                                          bucketName: buckets[index].name,
                                        ),
                                        type: PageTransitionType.leftToRight,
                                      ),
                                    );
                                  },
                                  child: Container(
                                    height: height * 0.12,
                                    width: width * 0.9,
                                    margin: const EdgeInsets.only(
                                        left: 15, right: 15, top: 25),
                                    padding: const EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      border:
                                          Border.all(color: colorTheme.borders),
                                      boxShadow: [AppEffect.shadowMedium],
                                      color: colorTheme.layer,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          "assets/images/drive.png",
                                          height: 48,
                                          width: 48,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8.0),
                                          child: SizedBox(
                                            width: width * 0.65,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  buckets[index].name,
                                                  style:
                                                      TextTypography.titleSmall,
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      ConvertDate()
                                                          .convertGregorianToJalali(
                                                              buckets[index]
                                                                  .creationDate
                                                                  .toString())
                                                          .toPersianDigit(),
                                                      style: TextTypography
                                                          .labelSmall
                                                          .copyWith(
                                                        color: colorTheme
                                                            .textVariant,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              }, childCount: buckets.length),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
          },
        ),
      ),
    );
  }
}
