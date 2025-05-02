import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class CapturedPhotoScreen extends StatelessWidget {
  const CapturedPhotoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppDecoration.fillOnPrimaryContainer.color,
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              spacing: 16,
              children: [
                // _buildAppbar(context),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgFreepikCandid678x402,
                      height: 714.h,
                      width: double.maxFinite,
                    ),
                    Positioned(
                      top: 20.h,
                      right: 0.h,
                      left: 20.h,
                      child: _buildAppbar(context),
                    ),
                  ],
                ),
                _buildRow(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppbar(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: CustomAppBar(
        height: 36.h,
        leadingWidth: 53.h,
        leading: AppbarLeadingImage(
          imagePath: ImageConstant.imgImage35,
          margin: EdgeInsets.only(right: 28.h),
          onTap: () {
            onTapImgImagethirtyfive();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRow(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 32.h,
        right: 36.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage17,
            height: 36.h,
            width: 38.h,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage1560x60,
            height: 60.h,
            width: 62.h,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage46,
            height: 38.h,
            width: 38.h,
            onTap: () {
              onTapRight();
            },
          )
        ],
      ),
    );
  }

  /// Navigates to the openCameraOneScreen when the action is triggered.
  onTapImgImagethirtyfive() {
    Get.back();
  }

  /// Navigates to the camPermissionFiveScreen when the action is triggered.
  onTapRight() {
    Get.offNamed(AppRoutes.camPermissionOneScreen);
  }
}
