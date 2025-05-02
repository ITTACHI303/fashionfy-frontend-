import 'package:ai_measurement/core/utils/string_resources.dart';
import 'package:ai_measurement/presentation/reset_new_password_screen/reset_new_password_controller/reset_new_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

class ResetNewPasswordScreen extends StatefulWidget {
  ResetNewPasswordScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<ResetNewPasswordScreen> createState() => _ResetNewPasswordScreenState();
}

class _ResetNewPasswordScreenState extends State<ResetNewPasswordScreen> {
  final ResetNewPasswordController resetNewPasswordController =
      Get.put(ResetNewPasswordController());

  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;

  final int userId = Get.arguments;

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
            left: 20.h,
            top: 20.h,
            right: 20.h,
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
              _buildColumnsingup(context)
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
  Widget _buildColumnsingup(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Column(
        children: [
          Text(
            StringResources.strSetNewPassword.tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 10.h),
          Text(
            StringResources.strCreateStrongPassword.tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium!.copyWith(
              height: 1.54,
            ),
          ),
          SizedBox(height: 16.h),
          CustomTextFormField(
            controller: resetNewPasswordController.passwordController,
            hintText: StringResources.strNewPassword.tr,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 16.h,
            ),
            borderDecoration: TextFormFieldStyleHelper.fillOnPrimary,
            filled: true,
            fillColor: theme.colorScheme.onPrimary,
            obscureText: !isPasswordVisible,
            suffix: IconButton(
              icon: Icon(
                isPasswordVisible
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                size: 20.h,
              ),
              onPressed: () {
                setState(() {
                  isPasswordVisible = !isPasswordVisible;
                });
              },
            ),
          ),
          SizedBox(height: 16.h),
          CustomTextFormField(
            controller: resetNewPasswordController.confirmPasswordController,
            hintText: StringResources.strConfirmNewPassword.tr,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 16.h,
            ),
            borderDecoration: TextFormFieldStyleHelper.fillOnPrimary,
            filled: true,
            fillColor: theme.colorScheme.onPrimary,
            obscureText: !isConfirmPasswordVisible,
            suffix: IconButton(
              icon: Icon(
                isConfirmPasswordVisible
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                size: 20.h,
              ),
              onPressed: () {
                setState(() {
                  isConfirmPasswordVisible = !isConfirmPasswordVisible;
                });
              },
            ),
          ),
          // Container(
          //   padding: EdgeInsets.symmetric(
          //     horizontal: 16.h,
          //     vertical: 10.h,
          //   ),
          //   decoration: AppDecoration.fillOnPrimary.copyWith(
          //     borderRadius: BorderRadiusStyle.roundedBorder4,
          //   ),
          //   width: double.maxFinite,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Align(
          //         alignment: Alignment.center,
          //         child: Padding(
          //           padding: EdgeInsets.only(left: 6.h),
          //           child: Text(
          //             "New Password",
          //             style: theme.textTheme.bodyMedium,
          //           ),
          //         ),
          //       ),
          //       CustomImageView(
          //         imagePath: ImageConstant.imgImage2,
          //         height: 24.h,
          //         width: 26.h,
          //         margin: EdgeInsets.only(bottom: 4.h),
          //       )
          //     ],
          //   ),
          // ),
          // SizedBox(height: 14.h),
          // Container(
          //   padding: EdgeInsets.symmetric(
          //     horizontal: 16.h,
          //     vertical: 14.h,
          //   ),
          //   decoration: AppDecoration.fillOnPrimary.copyWith(
          //     borderRadius: BorderRadiusStyle.roundedBorder4,
          //   ),
          //   width: double.maxFinite,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Padding(
          //         padding: EdgeInsets.only(left: 6.h),
          //         child: Text(
          //           "Confirm Password",
          //           style: theme.textTheme.bodyMedium,
          //         ),
          //       ),
          //       CustomImageView(
          //         imagePath: ImageConstant.imgImage2,
          //         height: 24.h,
          //         width: 26.h,
          //         alignment: Alignment.center,
          //       )
          //     ],
          //   ),
          // ),
          SizedBox(height: 18.h),
          CustomElevatedButton(
            text: StringResources.strSave.tr,
            onPressed: () {
              onTapSave(context);
            },
          )
        ],
      ),
    );
  }

  /// Navigates to the resetEmailOtpScreen when the action is triggered.
  onTapImagethirtyfive() {
    Get.back();
  }

  /// Navigates to the signInTenScreen when the action is triggered.
  onTapSave(BuildContext context) {
    resetNewPasswordController.resetNewPasswordApi(context, userId);
  }
}
