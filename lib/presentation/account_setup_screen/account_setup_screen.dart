import 'package:ai_measurement/core/utils/string_resources.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class AccountSetupScreen extends StatelessWidget {
  const AccountSetupScreen({Key? key})
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
            left: 26.h,
            top: 40.h,
            right: 26.h,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [_buildInputone(context)],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      height: 78.h,
      leadingWidth: 52.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgImage35,
        margin: EdgeInsets.only(
          left: 28.h,
          top: 5.h,
          bottom: 49.h,
        ),
        onTap: () {
          onTapArrow1oneone();
        },
      ),
      centerTitle: true,
      title: Column(
        children: [
          AppbarTitle(
            text: StringResources.strProfileOptions.tr,
            // margin: EdgeInsets.only(
            //   left: 9.h,
            //   right: 8.h,
            // ),
          ),
          SizedBox(
            height: 20.h,
          ),
          AppbarSubtitleTwo(
            text: StringResources.strChooseProfile.tr,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInputone(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: GestureDetector(
        onTap: () {
          onTapInputone();
        },
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 32.h,
            vertical: 6.h,
          ),
          decoration: AppDecoration.fillOnPrimary.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder4,
          ),
          child: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage,
                height: 38.h,
                width: 38.h,
                radius: BorderRadius.circular(
                  18.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.h,
                ),
                child: Text(
                  StringResources.strAddProfile.tr,
                  style: theme.textTheme.titleSmall,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapArrow1oneone() {
    Get.back();
  }

  /// Navigates to the signInFiveScreen when the action is triggered.
  onTapInputone() {
    Get.toNamed(AppRoutes.signInFiveScreen);
  }
}
