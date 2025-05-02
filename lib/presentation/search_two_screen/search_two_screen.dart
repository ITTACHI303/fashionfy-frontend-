import 'package:ai_measurement/presentation/search_two_screen/product_details_controller/product_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/app_export.dart';
import '../../core/utils/string_resources.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';

class SearchTwoScreen extends StatefulWidget {
  const SearchTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<SearchTwoScreen> createState() => _SearchTwoScreenState();
}

class _SearchTwoScreenState extends State<SearchTwoScreen> {
  final controller = Get.put(ProductDetailsController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final productId = Get.arguments;
    Future.delayed(Duration.zero, () {
      controller.productDetailsApi(context, productId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        appBar: _buildAppbar(context),
        body: Obx(
          () => controller.productDetails.value.id == null
              ? Container()
              : SingleChildScrollView(
                  child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.only(
                      left: 12.h,
                      top: 6.h,
                      right: 12.h,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          height: 182.h,
                          width: double.maxFinite,
                          margin: EdgeInsets.symmetric(horizontal: 62.h),
                          child: controller.productDetails.value.image != null
                              ? Image.network(
                                  controller.productDetails.value.image!)
                              : CustomImageView(
                                  imagePath: ImageConstant.imgShoe1,
                                  height: 182.h,
                                  width: double.maxFinite,
                                ),
                        ),
                        SizedBox(height: 40.h),
                        _buildRow(context),
                        SizedBox(height: 16.h),
                        Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.symmetric(horizontal: 28.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                controller.productDetails.value.brand!.name!,
                                style: CustomTextStyles
                                    .titleMediumMontserratBlack900ExtraBold,
                              ),
                              Text(
                                "\$${controller.productDetails.value.price}",
                                style: CustomTextStyles
                                    .titleMediumMontserratBlack900Medium19,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 2.h),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 26.h),
                            child: Text(
                              controller.productDetails.value.name!,
                              style: CustomTextStyles.titleSmallBlack900,
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        SizedBox(
                          width: double.maxFinite,
                          child: Divider(
                            color: appTheme.blueGray10001,
                            indent: 28.h,
                            endIndent: 28.h,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        SizedBox(
                          width: 318.h,
                          child: Text(
                            controller.productDetails.value.description!,
                            maxLines: 9,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.titleSmallMedium.copyWith(
                              height: 1.54,
                            ),
                          ),
                        ),
                        SizedBox(height: 44.h),
                        CustomElevatedButton(
                          text: StringResources.strTryOn3dModel.tr,
                          margin: EdgeInsets.symmetric(horizontal: 16.h),
                          onPressed: () {
                            onTapTryon3dmodel();
                          },
                        ),
                        SizedBox(height: 44.h),
                      ],
                    ),
                  ),
                ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 52.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgImage35,
        margin: EdgeInsets.only(left: 28.h),
        onTap: () {
          onTapImagethirtyfive();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      spacing: 5.h,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgRectangle2193,
          height: 54.h,
          width: 54.h,
          radius: BorderRadius.circular(
            8.h,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgRectangle2194,
          height: 54.h,
          width: 54.h,
          radius: BorderRadius.circular(
            8.h,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgRectangle2195,
          height: 54.h,
          width: 54.h,
          radius: BorderRadius.circular(
            8.h,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgRectangle2196,
          height: 54.h,
          width: 54.h,
          radius: BorderRadius.circular(
            8.h,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgRectangle2197,
          height: 54.h,
          width: 54.h,
          radius: BorderRadius.circular(
            8.h,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgRectangle2197,
          height: 54.h,
          width: 54.h,
          radius: BorderRadius.circular(
            8.h,
          ),
        )
      ],
    );
  }

  /// Navigates to the searchOneScreen when the action is triggered.
  onTapImagethirtyfive() {
    Get.back();
  }

  /// Navigates to the camPermissionFourScreen when the action is triggered.
  onTapTryon3dmodel() {
    Get.offAllNamed(AppRoutes.bottomNavigationBar);
  }
}
