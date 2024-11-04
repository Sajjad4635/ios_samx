
import 'dart:convert';
import 'dart:typed_data';

import 'package:ios_samx/core/base_widget/app_text_field/app_text_field.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/faq/domain/use_case/faq/params/get_faq_param.dart';
import 'package:ios_samx/feature/main_app/faq/domain/use_case/search/params/faq_search_params.dart';
import 'package:ios_samx/feature/main_app/faq/presentation/bloc/search/faq_search_bloc.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:magicon/magicon.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../core/base_widget/app_no_data/app_no_data.dart';
import '../../../../../core/constant/app_style.dart';
import '../../../../../core/constant/theme/custom_theme.dart';
import '../../../../../core/constant/theme/typography.dart';
import '../../../../../core/responsive/responsive_layout.dart';
import '../../../../../core/widgets/alert_dialog.dart';
import '../../../../../injection_container.dart';
import '../../domain/entities/category/get_category_response_data/get_category_response_data.dart';
import '../../domain/entities/faq/get_faq_category_qa_response_data/get_faq_category_qa_response_data.dart';
import '../bloc/category/get_category_bloc.dart';
import '../bloc/faq_qa/faq_qa_bloc.dart';


class FaqScreen extends StatefulWidget {
  const FaqScreen({super.key});

  @override
  State<FaqScreen> createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {

  late GetCategoryBloc getCategoryBloc;
  late FaqQaBloc faqQaBloc;
  late FaqSearchBloc faqSearchBloc ;


  int currentPage = 0;
  int currentExpandedIndex = -1;
  int previewsSelectedCategory = -1;
  bool isSearchPressed = false ;
  bool isLoading = false ;
  int previuseSelectedRowItem = -1 ;
  bool setExpanded = false ;

  final _formKey = GlobalKey<FormState>();

  List<FaqResponseData> currentList = [];
  List<FaqCategoryResponseData> categoryList = [] ;
  List<Uint8List?> icons = [] ;
  late FaqCategoryResponseData  currentCategoryObject   ;
  TextEditingController searchbarController = TextEditingController();
  final ItemScrollController titlesScrollController = ItemScrollController();

  @override
  void initState() {
    faqQaBloc = sl<FaqQaBloc>();
    getCategoryBloc = sl<GetCategoryBloc>();
    faqSearchBloc = sl<FaqSearchBloc>();
    getCategoryBloc.add(GetCategoryEvent.getCategoryEventCalled(noParams: NoParams()));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();
    final width = ResponsiveLayout.getDeviceType(context);
    final height = MediaQuery.of(context).size.height;


    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Form(
        key: _formKey,
        child: Scaffold(
          backgroundColor: colorTheme.lightWhite,
          appBar: AppBar(
            backgroundColor: colorTheme.bgInverse,
            elevation: 0,
            centerTitle: true,
            title: Text(
              'main.faq'.tr(),
              style: AppStyle.size18Weight700,
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.arrow_back,
                  color: colorTheme.layer,
                ),
              ),
            ),
          ),
          body: MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => getCategoryBloc,),
              BlocProvider(create: (context) => faqQaBloc,),
              BlocProvider(create: (context) => faqSearchBloc,),
            ],
            child: MultiBlocListener(
              listeners: [
                BlocListener<GetCategoryBloc, GetCategoryState>(
                  bloc: getCategoryBloc,
                  listener: (context, state) {
                    state.maybeWhen(
                      loadFailure: (failure) {
                        showErrorWidget(context, failure.code!, failure.message!);
                      },
                      loadSuccess: (getCategoryEntities) {
                        if(getCategoryEntities.getCategoryResponseData.isEmpty){
                          currentList.clear() ;
                          setState(() {});
                          showErrorWidget(context, 101, "فاقد محتوا") ;
                        }else{
                          var list = getCategoryEntities.getCategoryResponseData;


                          for(var element in list ){
                            categoryList.add(FaqCategoryResponseData(id: element.id, name: element.name, nameFa: element.nameFa, isActive: element.isActive, order: element.order,  ));
                            icons.add(base64Decode(element.icon.toString()));
                          }

                          setState(() {
                          });
                          faqQaBloc.add( FaqQaEvent.faqQaEventCalled(FaqParam(categoryId: categoryList.first.id)));

                        }

                      },
                      orElse: () {},
                    );
                  },
                ),
                BlocListener<FaqQaBloc, FaqQaState>(
                  bloc: faqQaBloc,
                  listener: (context, state) {
                    state.maybeWhen(
                      loadFailure: (failure) {
                        showErrorWidget(context, failure.code!, failure.message!);
                      },
                      loadSuccess: (faqEntity) {
                        if(faqEntity.getFAQResponseData.isEmpty){
                          currentList.clear();
                        }else{
                          var faqResponseData = faqEntity.getFAQResponseData ;

                          currentList.clear();
                          for(var element in faqResponseData ){
                            currentList.add(FaqResponseData(id: element.id, question: element.question,
                                answer: element.answer, link: element.link, order: element.order,
                                faqCategoryId: element.faqCategoryId, faqCategory: element.faqCategory,
                                isExpanded: false
                            ));

                          }
                          titlesScrollController.jumpTo(index: currentPage ); // when clear search button pressed, to show previus category
                        }
                        setState(() {});
                      },
                      orElse: () {
                        return Center(child: Container(color: Colors.blue, width: 300,height: 300,),);
                      },
                      loading: () {
                        return const Center(child: CircularProgressIndicator(),);
                      },
                      initial: () {
                      },
                    );
                  },
                ),
                BlocListener<FaqSearchBloc,FaqSearchState>(
                  bloc: faqSearchBloc,
                  listener: (BuildContext context, FaqSearchState state) {
                    state.maybeWhen(
                      orElse: () {},
                      loading: () =>  isLoading = true ,
                      loadSuccess: (faqEntity) {
                        if(faqEntity.getFAQResponseData.isEmpty){
                          currentList.clear();
                        }else{
                          currentList.clear();
                          for(var element in faqEntity.getFAQResponseData ){
                            currentList.add(
                                FaqResponseData(
                                    id: element.id, question: element.question,
                                    answer: element.answer, link: element.link,
                                    order: element.order,
                                    faqCategoryId: element.faqCategoryId,
                                    faqCategory: element.faqCategory,
                                    isExpanded: false
                                ));

                          }
                          isLoading = false ;
                          setState(() {});
                        }
                      },
                      loadFailure: (failure) {
                        isLoading = false ;
                        setState(() { });
                        showErrorWidget(context, 100, "موردی یافت نشد");
                      },
                    );
                  },
                ),
              ],
              child: Center(
                child: SizedBox(
                  width: width * 0.95,
                  child: Column(
                    children: [
                      const SizedBox(height: 24,),
                      Container(
                        color: Colors.transparent,
                        child: AppTextField(
                          hintText: 'main.Search_question'.tr(),
                          errorMessage: "----",
                          maxLength: 100,
                          validator: (value) {
                            if (value!.toString().isNotEmpty) {
                              return null;
                            } else {
                              return 'main.enter_at_least_1_letters'.tr();
                            }
                          },
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                          controller: searchbarController,
                          label: 'main.Search_question'.tr(),
                          suffixIcon: IconButton(
                            icon: const Icon(Magicon.timesSquare),
                            onPressed: () {
                              if(isSearchPressed){
                                searchbarController.text = "";
                                isSearchPressed = false ;
                                currentPage = categoryList.indexOf(currentCategoryObject) ;

                                faqQaBloc.add(FaqQaEvent.faqQaEventCalled(FaqParam(categoryId: currentCategoryObject.id)));
                                titlesScrollController.jumpTo(index: currentPage);
                                setState(() {});
                              }
                            },
                          ),
                          prefixIcon: IconButton(
                              icon: const Icon(Magicon.search),
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  searchQuestion(searchbarController.text);
                                }
                              }),
                          onEditingComplete: () {
                            if (_formKey.currentState!.validate()) {
                              searchQuestion(searchbarController.text);
                            }
                          },
                        ),
                      ),
                      /// categories buttons
                      BlocBuilder<GetCategoryBloc, GetCategoryState>(
                        bloc: getCategoryBloc,
                        builder: (context, state) {
                          return state.maybeWhen(
                            orElse: () {
                              return const Center(child: SizedBox(),);
                            },
                            loading: () {
                              return  Skeletonizer(
                                enabled: true,
                                child: SizedBox(
                                  height: height * 0.06,
                                  child: ScrollablePositionedList.builder(
                                    itemCount: 5,
                                    scrollDirection: Axis.horizontal,
                                    physics: const BouncingScrollPhysics(),
                                    itemBuilder: (context, index) {
                                      return GestureDetector(
                                        onTap: () {},
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 4, vertical: 0),
                                          child: AnimatedContainer(
                                            duration: const Duration(milliseconds: 300),
                                            //  width: width * 0.4,
                                            decoration:   BoxDecoration(
                                              borderRadius: const BorderRadius.all( Radius.circular(24)),
                                              border: Border.all(
                                                color:  colorTheme.borders,
                                                width: 1,
                                              ),
                                            ),
                                            child: const Row(
                                              children: [
                                                SizedBox(width: 24,),
                                                Icon(Magicon.questionCircle,),
                                                SizedBox(width: 12,),
                                                Text("test" ,),
                                                SizedBox(width: 24,),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              );
                            },
                            loadSuccess: (getCategoryEntities) {
                              if (getCategoryEntities.getCategoryResponseData.isNotEmpty) {
                                return SizedBox(
                                  height: height * 0.06,
                                  child: ScrollablePositionedList.builder(
                                    itemScrollController: titlesScrollController,
                                    itemCount: categoryList.length,
                                    scrollDirection: Axis.horizontal,
                                    physics: const BouncingScrollPhysics(),
                                    itemBuilder: (context, index) {
                                      return GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            currentPage = index;
                                            currentCategoryObject = categoryList[index];
                                            currentList.clear();
                                            currentExpandedIndex = -1;
                                          });
                                          faqQaBloc.add(FaqQaEvent.faqQaEventCalled(FaqParam(categoryId: categoryList[index].id)));
                                          setState(() {});
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 4, vertical: 0),
                                          child: AnimatedContainer(
                                            duration: const Duration(milliseconds: 300),
                                            //  width: width * 0.4,
                                            decoration: BoxDecoration(
                                              borderRadius: const BorderRadius.all(
                                                  Radius.circular(24)),
                                              border: Border.all(
                                                color: currentPage == index ? Colors.transparent : colorTheme.borders,
                                                width: 1,
                                              ),
                                              color: currentPage == index
                                                  ? colorTheme.brandSecondary
                                                  : colorTheme.layer,
                                            ),
                                            child: Row(
                                              children: [
                                                const SizedBox(width: 24,),
                                                SvgPicture.memory(icons[index]!,  color: currentPage == index ? colorTheme.textInverse : colorTheme.bgInverse,),

                                                const SizedBox(
                                                  width: 12,
                                                ),
                                                Text(
                                                  categoryList[index].nameFa ,
                                                  style: TextTypography.labelLarge.copyWith(
                                                      color: currentPage == index
                                                          ? colorTheme.textInverse
                                                          : colorTheme.bgInverse),
                                                ),
                                                const SizedBox(
                                                  width: 24,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                );
                              } else {
                                return const Center(child: SizedBox(),);
                              }
                            },
                            loadFailure: (failure) {
                              return Center(child: Text(failure.message!),);
                            },
                          );
                        },
                      ),
                      const SizedBox(height: 12,),

                      /// Main Body
                      BlocBuilder<FaqQaBloc, FaqQaState>(
                        bloc: faqQaBloc,
                        builder: (context, state) {

                          return state.maybeWhen(
                            loading: () {
                              return Skeletonizer(
                                  enabled:  true,
                                  child:
                                  ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: 5,
                                    itemBuilder: (context, index) {
                                      return Column(
                                        children: [
                                          const SizedBox(height: 3,),
                                          Container(
                                            height: height*0.08,
                                            width: width*0.9,
                                            decoration: BoxDecoration(
                                              color: colorTheme.layer,
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                            child: const Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Text("----------------------",),
                                                Icon(Magicon.arrowImport),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(height: 3,),
                                        ],
                                      );
                                    },
                                  )
                              );
                            },
                            orElse: () => const Center(child: SizedBox(),) ,
                            loadFailure:(failure) => Center(child: Text("FAILURE : ${failure.message!}"),),
                            loadSuccess: (faqEntity) {
                              return
                                Expanded(
                                  child: RefreshIndicator(
                                    onRefresh: () async{
                                      currentList.clear();
                                      searchbarController.text.isEmpty ?
                                      faqQaBloc.add(FaqQaEvent.faqQaEventCalled(FaqParam(categoryId: categoryList[currentPage].id))) :
                                      faqSearchBloc.add(FaqSearchEvent.faqSearchEventCalled(FaqSearchParams(queryParam: searchbarController.text))) ;
                                      await Future.delayed(const Duration(seconds: 1)); // برای شبیه‌سازی تاخیر
                                    },
                                    child: currentList.isEmpty ?
                                    SizedBox(
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.vertical,
                                        physics: const AlwaysScrollableScrollPhysics(),
                                        child:   Align(
                                          alignment: Alignment.topCenter,
                                          child: AppNoData(
                                            text: 'main.empty_qa_msg'.tr(),
                                            imagePath: "assets/images/no_data.png",
                                          ),
                                        ),
                                      ),
                                    )
                                        :
                                    ListView.builder(
                                      itemCount: 1,
                                      itemBuilder: (context, index) {
                                        return Column(
                                          children: [
                                            SizedBox(height: height * 0.015,),
                                            ///

                                            ExpansionPanelList(
                                              //  expandedHeaderPadding: EdgeInsets.all(44.0),
                                              expansionCallback:(int index , bool isExpanded){
                                                setState(() {

                                                  currentPage = categoryList.indexWhere(
                                                        (faqCategoryResponseData) {
                                                      return faqCategoryResponseData.id ==
                                                          currentList[index].faqCategoryId!;
                                                    },
                                                  );
                                                  if (index == currentExpandedIndex) {
                                                    currentList[index].isExpanded = false ;
                                                    currentExpandedIndex = -1; // برای اینکه یک آیتم بتواند بارها باز و بسته شود
                                                  }else {
                                                    if (currentExpandedIndex < 0) {
                                                      currentList[index].isExpanded = true;
                                                      currentExpandedIndex = index;
                                                    } else {
                                                      currentList[currentExpandedIndex].isExpanded = false ;
                                                      currentList[index].isExpanded = true ;
                                                      currentExpandedIndex = index;
                                                    }
                                                    if (previewsSelectedCategory != currentPage) {
                                                      titlesScrollController.jumpTo(index: currentPage);
                                                    }
                                                  }

                                                });
                                              },
                                              children: currentList.map((FaqResponseData item) {
                                                return ExpansionPanel(
                                                    headerBuilder: (context, isExpanded) {
                                                      return Column(
                                                        children: [
                                                          //  SizedBox(height: height * 0.015,),
                                                          Padding(
                                                            padding: const EdgeInsets.symmetric(horizontal: 12 , vertical: 8),
                                                            child: Align(
                                                                alignment: Alignment.centerRight,
                                                                child: Text(item.question,  style: TextTypography.labelLarge,)),),
                                                        ],
                                                      );
                                                    },
                                                    body:
                                                    Padding(
                                                      padding: const EdgeInsets.symmetric(
                                                          vertical: 8, horizontal: 12),
                                                      child: Column(
                                                        children: [
                                                          Divider(
                                                            color: colorTheme.borders,
                                                            height: 1,
                                                          ),
                                                          SizedBox(height: height * 0.02,),
                                                          Align(
                                                              alignment: Alignment.centerRight,
                                                              child: Text(
                                                                item.answer,
                                                                style: TextTypography.labelLarge,
                                                                textAlign: TextAlign.right,
                                                              )),
                                                          SizedBox(height: height * 0.02,),
                                                          item.link != null
                                                              ? InkWell(
                                                            onTap: () {
                                                              launchUrl(Uri.parse(currentList[index].link!));
                                                            },
                                                            child: Row(
                                                              children: [
                                                                const SizedBox(
                                                                  width: 8,
                                                                ),
                                                                Text('main.read_more'.tr(),
                                                                    style: TextTypography
                                                                        .labelLarge
                                                                        .copyWith(
                                                                        color: colorTheme
                                                                            .primary)),
                                                                const SizedBox(width: 8,),
                                                                Icon(
                                                                  Magicon.angleLeftSmall,
                                                                  color: colorTheme.primary,
                                                                ),
                                                              ],
                                                            ),
                                                          )
                                                              : const SizedBox(),
                                                          //  SizedBox(height: height * 0.015,),
                                                        ],
                                                      ),
                                                    ),

                                                    isExpanded:  item.isExpanded
                                                ) ;
                                              },).toList(),
                                            ) ,
                                          ],
                                        );
                                      },
                                    ),
                                  ),
                                );
                            },
                          ) ;
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void searchQuestion(String queryParam) {
    currentPage = -1;
    currentList.clear();
    isSearchPressed = true ;
    setState(() {});
    FocusManager.instance.primaryFocus?.unfocus();
    faqSearchBloc.add(FaqSearchEvent.faqSearchEventCalled(FaqSearchParams(queryParam: queryParam))) ;

  }
}
