import 'package:ai_measurement/core/utils/string_resources.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class OpenCameraScreen extends StatelessWidget {
  const OpenCameraScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.whiteA700,
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          margin: EdgeInsets.only(bottom: 28.h),
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              decoration: AppDecoration.fillOnPrimaryContainer,
              child: Column(
                spacing: 656,
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: _buildAppbar(context),
                  ),
                  _buildRow(context),
                  SizedBox(height: 18.h)
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
      height: 36.h,
      title: AppbarSubtitleOne(
        text: StringResources.strCancel.tr,
        margin: EdgeInsets.only(left: 29.h),
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
            imagePath: ImageConstant.imgImage18,
            height: 36.h,
            width: 38.h,
          )
        ],
      ),
    );
  }
}
