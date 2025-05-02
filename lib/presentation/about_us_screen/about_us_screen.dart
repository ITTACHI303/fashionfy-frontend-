import 'package:ai_measurement/core/utils/string_resources.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.whiteA700,
      appBar: _buildAppbar(context),
      body: SafeArea(
        top: false,
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 34.h,
            top: 6.h,
            right: 34.h,
          ),
          child: Text(
            StringResources.strAboutUsParagraph.tr,
            // maxLines: 30,
            textAlign: TextAlign.justify,
            // overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.titleSmallMedium.copyWith(
              height: 1.54,
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      height: 50.h,
      leadingWidth: 52.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgImage351,
        margin: EdgeInsets.only(left: 28.h),
        onTap: () {
          onTapImagethirtyfive();
        },
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: StringResources.strAboutUs.tr,
      ),
    );
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapImagethirtyfive() {
    Get.back();
  }
}
