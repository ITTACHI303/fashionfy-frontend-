import 'package:ai_measurement/core/utils/string_resources.dart';
import 'package:ai_measurement/presentation/change_password_screen/change_password_screen_controller/change_password_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

class ChangePasswordScreen extends StatefulWidget {
  ChangePasswordScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final controller = Get.put(ChangePasswordScreenController());
  bool isPasswordVisible = false;
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
            top: 16.h,
            right: 26.h,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                "Enter your current password to continue",
                style: theme.textTheme.bodyMedium,
              ),
              SizedBox(height: 32.h),
              _buildInputone(context),
              SizedBox(height: 20.h),
              CustomElevatedButton(
                text: "Continue",
                onPressed: () {
                  onTapContinue();
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
        text: StringResources.strChangePassword.tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildInputone(BuildContext context) {
    return CustomTextFormField(
      controller: controller.oldPasswordController,
      hintText: StringResources.strOldPassword.tr,
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
    );
  }

  /// Navigates to the settingsScreen when the action is triggered.
  onTapImagethirtyfive() {
    Get.back();
  }

  /// Navigates to the changePasswordOneScreen when the action is triggered.
  onTapContinue() {
    Get.offNamed(AppRoutes.changePasswordOneScreen);
  }
}
