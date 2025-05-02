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

class ChangePasswordOneScreen extends StatefulWidget {
  const ChangePasswordOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<ChangePasswordOneScreen> createState() =>
      _ChangePasswordOneScreenState();
}

class _ChangePasswordOneScreenState extends State<ChangePasswordOneScreen> {
  final controller = Get.find<ChangePasswordScreenController>();
  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;
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
            top: 6.h,
            right: 26.h,
          ),
          child: Column(
            spacing: 16,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                StringResources.strCreateStrongPassword.tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium!.copyWith(
                  height: 1.54,
                ),
              ),
              _buildInputone(context),
              _buildInputtwo(context),
              CustomElevatedButton(
                text: StringResources.strSave.tr,
                onPressed: () {
                  onTapSave();
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
        text: StringResources.strSetNewPassword.tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildInputone(BuildContext context) {
    return CustomTextFormField(
      controller: controller.passwordController,
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
    );
  }

  /// Section Widget
  Widget _buildInputtwo(BuildContext context) {
    return CustomTextFormField(
      controller: controller.confirmPasswordController,
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
    );
  }

  /// Navigates to the changePasswordScreen when the action is triggered.
  onTapImagethirtyfive() {
    Get.back();
  }

  /// Navigates to the signInScreen when the action is triggered.
  onTapSave() {
    controller.changePasswordApi(context);
  }
}
