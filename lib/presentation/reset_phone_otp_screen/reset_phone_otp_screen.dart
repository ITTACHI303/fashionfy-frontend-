import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import '../../core/app_export.dart';
import '../../core/utils/string_resources.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';

class ResetPhoneOtpScreen extends StatelessWidget {
  ResetPhoneOtpScreen({Key? key})
      : super(
          key: key,
        );

  final otpController = TextEditingController();

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
            top: 20.h,
            right: 16.h,
          ),
          child: Column(
            spacing: 16,
            mainAxisSize: MainAxisSize.max,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCropped1,
                height: 56.h,
                width: 64.h,
              ),
              _buildColumnResetPassword(context)
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
  Widget _buildColumnResetPassword(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          Text(
            StringResources.strResetPassword.tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 16.h),
          Text(
            StringResources.strEnterOTPNumber.tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium!.copyWith(
              height: 1.54,
            ),
          ),
          SizedBox(height: 48.h),
          Pinput(
            length: 6,
            controller: otpController,
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
          ),
          // SizedBox(
          //   width: double.maxFinite,
          //   child: Row(
          //     children: [
          //       Container(
          //         height: 50.h,
          //         width: 50.h,
          //         decoration: AppDecoration.outlineGray300.copyWith(
          //           borderRadius: BorderRadiusStyle.roundedBorder14,
          //         ),
          //         child: Column(
          //           mainAxisSize: MainAxisSize.max,
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: [
          //             Text(
          //               "8",
          //               style: CustomTextStyles.titleMediumInterGray600,
          //             )
          //           ],
          //         ),
          //       ),
          //       Container(
          //         height: 50.h,
          //         width: 50.h,
          //         decoration: AppDecoration.outlineGray300.copyWith(
          //           borderRadius: BorderRadiusStyle.roundedBorder14,
          //         ),
          //         child: Column(
          //           mainAxisSize: MainAxisSize.max,
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: [
          //             Text(
          //               "5",
          //               style: CustomTextStyles.titleMediumInterGray600,
          //             )
          //           ],
          //         ),
          //       ),
          //       Container(
          //         height: 50.h,
          //         width: 50.h,
          //         decoration: AppDecoration.outlineGray900.copyWith(
          //           borderRadius: BorderRadiusStyle.roundedBorder14,
          //         ),
          //         child: Column(
          //           mainAxisSize: MainAxisSize.max,
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: [
          //             Text(
          //               "2",
          //               style: CustomTextStyles.titleMediumInterGray600,
          //             )
          //           ],
          //         ),
          //       ),
          //       Container(
          //         height: 50.h,
          //         width: 50.h,
          //         decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(
          //             14.h,
          //           ),
          //           border: Border.all(
          //             color: appTheme.gray300,
          //             width: 1.01.h,
          //           ),
          //         ),
          //       ),
          //       Container(
          //         height: 50.h,
          //         width: 50.h,
          //         decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(
          //             14.h,
          //           ),
          //           border: Border.all(
          //             color: appTheme.gray300,
          //             width: 1.01.h,
          //           ),
          //         ),
          //       ),
          //       Container(
          //         height: 50.h,
          //         width: 50.h,
          //         decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(
          //             14.h,
          //           ),
          //           border: Border.all(
          //             color: appTheme.gray300,
          //             width: 1.01.h,
          //           ),
          //         ),
          //       )
          //     ],
          //   ),
          // ),
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
    );
  }

  /// Navigates to the forgotPassword1bScreen when the action is triggered.
  onTapImagethirtyfive() {
    Get.back();
  }

  /// Navigates to the resetNewPasswordScreen when the action is triggered.
  onTapVerify(BuildContext context) {
    Get.offNamed(AppRoutes.resetNewPasswordScreen);
  }
}
