import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class VrScreen extends StatelessWidget {
  const VrScreen({Key? key})
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
          margin: EdgeInsets.only(bottom: 28.h),
          child: Column(
            children: [
              SizedBox(height: 10.h),
              SizedBox(
                width: double.maxFinite,
                child: _buildAppbar(context),
              ),
              SizedBox(height: 30.h),
              CustomImageView(
                imagePath: ImageConstant.imgImage48,
                height: 578.h,
                width: double.maxFinite,
                margin: EdgeInsets.only(
                  left: 100.h,
                  right: 92.h,
                ),
              ),
              Spacer(),
              _buildRowone(context),
              SizedBox(height: 18.h)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      height: 36.h,
      leadingWidth: 52.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgImage3524x24,
        margin: EdgeInsets.only(left: 28.h),
        onTap: () {
          onTapImagethirtyfive();
        },
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgImage16,
          height: 36.h,
          width: 36.h,
          margin: EdgeInsets.only(right: 23.h),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildRowone(BuildContext context) {
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
            imagePath: ImageConstant.imgImage18,
            height: 36.h,
            width: 38.h,
          )
        ],
      ),
    );
  }

  /// Navigates to the camPermissionFourScreen when the action is triggered.
  onTapImagethirtyfive() {
    Get.back();
  }
}
