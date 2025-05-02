import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/app_export.dart';
import '../../core/utils/string_resources.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key})
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
            left: 36.h,
            top: 8.h,
            right: 36.h,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [_buildColumnaccount(context)],
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
        imagePath: ImageConstant.imgImage35,
        margin: EdgeInsets.only(left: 28.h),
        onTap: () {
          onTapImagethirtyfive();
        },
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: StringResources.strSettings.tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnaccount(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(right: 8.h),
        child: Column(
          spacing: 28,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              StringResources.strAccountSettings.tr,
              style: CustomTextStyles.bodyLargeGray50001,
            ),
            SizedBox(
              height: 184.h,
              width: double.maxFinite,
              child: Column(
                spacing: 20,
                // alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: _buildColumnchangeema(context,
                        changeemailOne: StringResources.strChangePassword.tr,
                        onTapColumn: () {
                      onTapChangePassWord();
                    }),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: _buildColumnchangeema(context,
                        changeemailOne: StringResources.strChangeEmail.tr,
                        onTapColumn: () {
                      onTapChangeEmail();
                    }),
                  ),
                  _buildColumnchangeema(context,
                      changeemailOne: StringResources.strChangeNumber.tr,
                      onTapColumn: () {
                    onTapChangePhone();
                  }),
                  _buildColumnchangeema(context,
                      changeemailOne: StringResources.strLanguage.tr,
                      onTapColumn: () {
                    onTapLanguage();
                  })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildColumnchangeema(
    BuildContext context, {
    required String changeemailOne,
    required Function() onTapColumn,
  }) {
    return GestureDetector(
      onTap: onTapColumn,
      child: Row(
        children: [
          Text(
            changeemailOne,
            style: theme.textTheme.bodyLarge!.copyWith(
              color: appTheme.black900,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgVectorErrorcontainer,
            height: 12.h,
            width: 8.h,
            alignment: Alignment.centerRight,
          )
        ],
      ),
    );
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapImagethirtyfive() {
    Get.back();
  }

  /// Navigates to the changeEmailScreen when the action is triggered.
  onTapChangeEmail() {
    Get.toNamed(AppRoutes.changeEmailScreen);
  }

  onTapChangePhone() {
    Get.toNamed(AppRoutes.changePhoneNumberScreen);
  }

  onTapChangePassWord() {
    Get.toNamed(AppRoutes.changePasswordScreen);
  }

  onTapLanguage() {
    Get.toNamed(AppRoutes.editProfileOneScreen);
  }
}
