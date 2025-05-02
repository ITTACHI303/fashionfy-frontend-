import 'package:ai_measurement/core/utils/validation_functions.dart';
import 'package:ai_measurement/presentation/forgot_password_screen/forgot_password_screen_controller/forgot_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/app_export.dart';
import '../../core/utils/string_resources.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({Key? key})
      : super(
          key: key,
        );

  final ForgotPasswordController forgotPasswordController =
      Get.put(ForgotPasswordController());

  String? verificationMethod;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.whiteA700,
      resizeToAvoidBottomInset: false,
      appBar: _buildAppbar(context),
      body: SafeArea(
        top: false,
        child: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(
              left: 20.h,
              top: 20.h,
              right: 20.h,
            ),
            child: Column(
              spacing: 20,
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
            StringResources.strAccountRecovery.tr,
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
          SizedBox(height: 46.h),
          CustomTextFormField(
            controller: forgotPasswordController.controller,
            hintText: StringResources.strPhoneEmail.tr,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.emailAddress,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 16.h,
            ),
            borderDecoration: TextFormFieldStyleHelper.fillOnPrimary,
            filled: true,
            fillColor: theme.colorScheme.onPrimary,
          ),
          SizedBox(height: 20.h),
          CustomElevatedButton(
            text: StringResources.strNext.tr,
            onPressed: () {
              onTapNext(context);
            },
          )
        ],
      ),
    );
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapImagethirtyfive() {
    Get.back();
  }

  /// Navigates to the forgotPassword1aScreen when the action is triggered.
  onTapNext(BuildContext context) {
    if (isValidEmail(forgotPasswordController.controller.text))
      verificationMethod = "email";
    else if (isValidPhone(forgotPasswordController.controller.text))
      verificationMethod = "sms";
    forgotPasswordController.forgotPasswordApi(context, verificationMethod);
  }
}
