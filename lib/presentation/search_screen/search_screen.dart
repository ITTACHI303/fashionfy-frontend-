import 'package:ai_measurement/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

import '../../core/app_export.dart';
import '../../core/utils/string_resources.dart';
import '../../widgets/app_bar/appbar_title_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'widgets/search_one_item_widget.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key})
      : super(
          key: key,
        );

  final searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.whiteA700,
      appBar: _buildAppbar(context),
      body: SafeArea(
        top: false,
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(height: 20.h),
              // Container(
              //   margin: EdgeInsets.symmetric(horizontal: 68.h),
              //   height: 35.h,
              //   padding: EdgeInsets.symmetric(
              //     horizontal: 5.h,
              //     vertical: 6.h,
              //   ),
              //   decoration: AppDecoration.outlineBlack900.copyWith(
              //     borderRadius: BorderRadiusStyle.roundedBorder10,
              //   ),
              //   width: double.maxFinite,
              //   // child: Row(
              //   //   mainAxisAlignment: MainAxisAlignment.center,
              //   //   children: [
              //   //     CustomImageView(
              //   //       imagePath: ImageConstant.imgSearch,
              //   //     ),
              //   //     Align(
              //   //       alignment: Alignment.topCenter,
              //   //       child: Padding(
              //   //         padding: EdgeInsets.only(left: 8.h),
              //   //         child: Text(
              //   //           "Search product",
              //   //           style: CustomTextStyles.labelLargeBluegray400,
              //   //         ),
              //   //       ),
              //   //     ),
              //   //     Spacer(),
              //   //     CustomImageView(
              //   //       imagePath: ImageConstant.imgImage15,
              //   //       height: 20.h,
              //   //       width: 24.h,
              //   //     )
              //   //   ],
              //   // ),
              //   child: CustomTextFormField(
              //     controller: searchController,
              //     hintText: "Search product",
              //     hintStyle: CustomTextStyles.labelLargeBluegray400,
              //     prefix: CustomImageView(
              //       imagePath: ImageConstant.imgSearch,
              //     ),
              //     suffix: CustomImageView(
              //       imagePath: ImageConstant.imgImage15,
              //       height: 5.h,
              //       width: 6.h,
              //     ),
              //   ),
              // ),
              // SearchBarWidget(
              //   controller: searchController,
              //   hintText: 'Search product',
              //   onCameraTap: () {
              //     print("Camera Icon Clicked");
              //   },
              // ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 68.h),
                child: CustomSearchView(
                  controller: searchController,
                  hintText: StringResources.strSearchProduct.tr,
                  hintStyle: CustomTextStyles.labelLargeBluegray400,
                ),
              ),
              SizedBox(height: 16.h),
              Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 32.h),
                      child: Text(
                        StringResources.strStyleTryOn.tr,
                        style: theme.textTheme.headlineLarge,
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: CustomImageView(
                      imagePath: ImageConstant.img,
                      height: 20.h,
                      width: 20.h,
                      alignment: Alignment.centerLeft,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgBlack900,
                      height: 20.h,
                      width: 20.h,
                    ),
                  )
                ],
              ),
              SizedBox(height: 6.h),
              _buildRowmenone(context),
              SizedBox(height: 18.h),
              _buildSearchone(context)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgImage2025010,
        height: 40.h,
        width: 158.h,
        margin: EdgeInsets.only(left: 10.h),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 28.0),
          child: CustomImageView(
            imagePath: ImageConstant.imgImage24,
            onTap: () {},
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildRowmenone(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 32.h,
        right: 36.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            StringResources.strMen.tr,
            style: CustomTextStyles.titleMediumMontserratPrimary,
          ),
          Spacer(
            flex: 56,
          ),
          Text(
            StringResources.strWomen.tr,
            style: CustomTextStyles.titleMediumMontserratPrimary,
          ),
          Spacer(
            flex: 43,
          ),
          Text(
            StringResources.strKids.tr,
            style: CustomTextStyles.titleMediumMontserratPrimary,
          ),
          // SizedBox(
          //   height: 22.h,
          //   width: 54.h,
          //   child: Stack(
          //     alignment: Alignment.centerRight,
          //     children: [
          //       Text(
          //         "Kids",
          //         style: CustomTextStyles.titleMediumMontserratPrimary,
          //       ),
          //       CustomImageView(
          //         imagePath: ImageConstant.img,
          //         height: 22.h,
          //         width: 20.h,
          //         alignment: Alignment.centerLeft,
          //       ),
          //       CustomImageView(
          //         imagePath: ImageConstant.imgBlack900,
          //         height: 20.h,
          //         width: 20.h,
          //       )
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchone(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 28.0, right: 28.0),
        child: ResponsiveGridListBuilder(
          minItemWidth: 1,
          minItemsPerRow: 2,
          maxItemsPerRow: 2,
          horizontalGridSpacing: 14.h,
          verticalGridSpacing: 14.h,
          builder: (context, items) => ListView(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            children: items,
          ),
          gridItems: List.generate(
            7,
            (index) {
              return SearchOneItemWidget(
                onTapColumnsunglasse: () {
                  onTapColumnsunglasse();
                },
              );
            },
          ),
        ),
      ),
    );
  }

  /// Navigates to the searchOneScreen when the action is triggered.
  onTapColumnsunglasse() {
    Get.toNamed(AppRoutes.searchOneScreen);
  }
}
