import 'package:ai_measurement/presentation/search_one_screen/product_controller/products_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

import '../../core/app_export.dart';
import '../../core/utils/string_resources.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_search_view.dart';
import 'widgets/search_one_one_item_widget.dart';

class SearchOneScreen extends StatefulWidget {
  SearchOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<SearchOneScreen> createState() => _SearchOneScreenState();
}

class _SearchOneScreenState extends State<SearchOneScreen> {
  final controller = Get.put(ProductsController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration.zero, () {
      controller.loadProducts(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.whiteA700,
      appBar: _buildAppbar(context),
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Column(
            spacing: 20,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 68.h),
                child: CustomSearchView(
                  controller: controller.searchController,
                  hintText: StringResources.strSearchProduct.tr,
                  hintStyle: CustomTextStyles.labelLargeBluegray400,
                  onSearch: (value) {
                    if (value.isNotEmpty) {
                      controller.searchProductsApi(context);
                    } else {
                      controller.loadProducts(context);
                    }
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 32.h, right: 32.h),
                child: _buildRowshoesone(context),
              ),
              Padding(
                padding: EdgeInsets.only(left: 32.h, right: 32.h),
                child: _buildSearchoneone(context),
              ),
              SizedBox(height: 30.h)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      height: 62.h,
      leadingWidth: 52.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgImage35,
        margin: EdgeInsets.only(left: 28.h),
        onTap: () {
          onTapImagethirtyfive();
        },
      ),
      // centerTitle: true,
      // title: Container(
      //   width: 264.h,
      //   decoration: AppDecoration.outlineBlack900.copyWith(
      //     borderRadius: BorderRadiusStyle.roundedBorder10,
      //   ),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       AppbarImage(
      //         imagePath: ImageConstant.imgRewind,
      //         height: 12.h,
      //         width: 12.h,
      //         margin: EdgeInsets.only(left: 11.h),
      //       ),
      //       AppbarSubtitleThree(
      //         text: "Search product",
      //         margin: EdgeInsets.only(left: 8.h),
      //       ),
      //       AppbarImage(
      //         imagePath: ImageConstant.imgImage15,
      //         height: 20.h,
      //         width: 22.h,
      //         margin: EdgeInsets.only(
      //           left: 107.h,
      //           right: 9.h,
      //         ),
      //       )
      //     ],
      //   ),
      // ),
    );
  }

  /// Section Widget
  Widget _buildRowshoesone(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 2.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                spacing: 6,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    StringResources.strShoes.tr,
                    style: theme.textTheme.headlineLarge,
                  ),
                  Obx(
                    () => Text(
                      "${controller.fetchProducts.length} products found",
                      style: CustomTextStyles.titleMediumMontserratBlack900,
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: CustomImageView(
              imagePath: ImageConstant.img,
              height: 24.h,
              width: 24.h,
              margin: EdgeInsets.only(top: 6.h),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: CustomImageView(
              imagePath: ImageConstant.imgFilter,
              height: 24.h,
              width: 24.h,
              margin: EdgeInsets.only(top: 6.h),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchoneone(BuildContext context) {
    return Obx(() {
      return Padding(
        padding: EdgeInsets.only(right: 2.h),
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
            controller.fetchProducts.length,
            (index) {
              return SearchOneOneItemWidget(
                onTapColumnnikeone: () {
                  onTapColumnnikeone(controller.fetchProducts[index].id);
                },
                productDescription: controller.fetchProducts[index].description,
                productName: controller.fetchProducts[index].name,
                productImage: controller.fetchProducts[index].image,
                productPrice: controller.fetchProducts[index].price.toString(),
                productId: controller.fetchProducts[index].id.toString(),
              );
            },
          ),
        ),
      );
    });
  }

  /// Navigates to the searchScreen when the action is triggered.
  onTapImagethirtyfive() {
    Get.back();
  }

  /// Navigates to the searchTwoScreen when the action is triggered.
  onTapColumnnikeone(productId) {
    Get.toNamed(AppRoutes.searchTwoScreen, arguments: productId);
  }
}
