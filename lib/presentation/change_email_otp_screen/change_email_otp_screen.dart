import 'package:ai_measurement/core/utils/string_resources.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'change_email_otp_controller/change_email_otp_controller.dart';

class ChangeEmailOtpScreen extends StatelessWidget {
  ChangeEmailOtpScreen({Key? key})
      : super(
          key: key,
        );
  final controller = Get.put(ChangeEmailOtpController());
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
            left: 16.h,
            top: 6.h,
            right: 16.h,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                StringResources.strEnterOTPEmail.tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium!.copyWith(
                  height: 1.54,
                ),
              ),
              SizedBox(height: 52.h),
              _buildRoweightone(context),
              SizedBox(height: 36.h),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: StringResources.strDidNotGetCode.tr,
                      style: CustomTextStyles.labelLargeMedium,
                    ),
                    TextSpan(
                      text: StringResources.strResend.tr,
                      style: theme.textTheme.labelLarge,
                    )
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 22.h),
              CustomElevatedButton(
                text: StringResources.strVerify.tr,
                margin: EdgeInsets.symmetric(horizontal: 10.h),
                onPressed: () {
                  onTapVerify(context);
                },
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
      height: 52.h,
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
        text: "Change Email",
      ),
    );
  }

  /// Section Widget
  Widget _buildRoweightone(BuildContext context) {
    return Pinput(
      length: 6,
      controller: controller.otpController,
      focusedPinTheme: PinTheme(
        height: 51,
        width: 51,
        textStyle: CustomTextStyles.titleMediumInterGray600,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: appTheme.black900),
        ),
      ),
      defaultPinTheme: PinTheme(
        height: 51,
        width: 51,
        textStyle: CustomTextStyles.titleMediumInterGray600,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: appTheme.gray300),
        ),
      ),
    );
  }

  /// Navigates to the changeEmailScreen when the action is triggered.
  onTapImagethirtyfive() {
    Get.back();
  }

  /// Navigates to the signInEightScreen when the action is triggered.
  onTapVerify(context) {
    controller.verifyEmailApi(context);
  }
}
