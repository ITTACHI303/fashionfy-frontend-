import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/app_export.dart';
import '../../core/utils/keys.dart';
import '../../core/utils/string_resources.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';

class ForgotPassword1aScreen extends StatelessWidget {
  ForgotPassword1aScreen({Key? key})
      : super(
          key: key,
        );

  final data = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.whiteA700,
      appBar: _buildAppbar(context),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        top: false,
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 20.h,
            top: 20.h,
            right: 20.h,
          ),
          child: Column(
            spacing: 18,
            mainAxisSize: MainAxisSize.max,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCropped1,
                height: 56.h,
                width: 64.h,
              ),
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 4.h),
                child: Column(
                  children: [
                    Text(
                      StringResources.strChooseOption.tr,
                      style: theme.textTheme.headlineSmall,
                    ),
                    SizedBox(height: 6.h),
                    Text(
                      StringResources.strEnterEmailOrPhone.tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        height: 1.54,
                      ),
                    ),
                    SizedBox(height: 36.h),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage84x82,
                      height: 84.h,
                      width: 84.h,
                      radius: BorderRadius.circular(
                        40.h,
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Text(
                      StringResources.strOliverWyman.tr,
                      style: CustomTextStyles.titleSmallSemiBold,
                    ),
                    SizedBox(height: 20.h),
                    _buildInputone(context),
                    SizedBox(height: 14.h),
                    _buildInputtwo(context),
                    SizedBox(height: 20.h),
                    CustomElevatedButton(
                      text: StringResources.strNext.tr,
                      onPressed: () {
                        onTapNext();
                      },
                    )
                  ],
                ),
              )
            ],
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
  Widget _buildInputone(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: AppDecoration.outlineBlack,
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(
                left: 22.h,
                top: 16.h,
                bottom: 16.h,
              ),
              decoration: AppDecoration.fillOnPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder4,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    StringResources.strSendCodeViaEmail.tr,
                    style: theme.textTheme.bodyMedium,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInputtwo(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.only(
          left: 22.h,
          top: 16.h,
          bottom: 16.h,
        ),
        decoration: AppDecoration.fillOnPrimary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder4,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              StringResources.strSendCodeViaNumber.tr,
              style: theme.textTheme.bodyMedium,
            )
          ],
        ),
      ),
    );
  }

  /// Navigates to the forgotPasswordScreen when the action is triggered.
  onTapImagethirtyfive() {
    Get.back();
  }

  /// Navigates to the resetEmailOtpScreen when the action is triggered.
  onTapInputone() {
    Get.toNamed(AppRoutes.resetPasswordOtpScreen,
        arguments: {Keys.keyNavigatedFrom: Keys.keyEmail, 'data': data});
  }

  /// Navigates to the resetEmailOtpScreen when the action is triggered.
  onTapNext() {
    Get.toNamed(AppRoutes.resetPasswordOtpScreen,
        arguments: {Keys.keyNavigatedFrom: Keys.keyEmail, 'data': data});
  }

  /// Navigates to the forgotPassword1bScreen when the action is triggered.
  onTapInputtwo() {
    Get.offNamed(AppRoutes.forgotPassword1bScreen);
  }
}
