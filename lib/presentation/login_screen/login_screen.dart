import 'package:ai_measurement/core/utils/string_resources.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'login_controller/login_controller.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final LoginController loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppbar(context),
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(
              left: 26.h,
              top: 6.h,
              right: 26.h,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage2025010,
                  height: 78.h,
                  width: double.maxFinite,
                  margin: EdgeInsets.only(
                    left: 36.h,
                    right: 38.h,
                  ),
                ),
                SizedBox(height: 22.h),
                Text(
                  StringResources.strLoginToAIStyling.tr,
                  style: theme.textTheme.bodyMedium,
                ),
                SizedBox(height: 50.h),
                CustomTextFormField(
                  controller: loginController.phoneController,
                  hintText: StringResources.strPhoneEmail.tr,
                  textInputType: TextInputType.emailAddress,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20.h,
                    vertical: 16.h,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.fillOnPrimary,
                  filled: true,
                  fillColor: theme.colorScheme.onPrimary,
                ),
                SizedBox(height: 14.h),
                CustomTextFormField(
                  controller: loginController.passwordController,
                  hintText: StringResources.strPassword.tr,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  obscureText: true,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20.h,
                    vertical: 16.h,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.fillOnPrimary,
                  filled: true,
                  fillColor: theme.colorScheme.onPrimary,
                ),
                SizedBox(height: 18.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () {
                      onTapTxtForgotpassword();
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        StringResources.strForgotPassword.tr,
                        style: CustomTextStyles.titleSmallMedium,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                CustomElevatedButton(
                  text: StringResources.strLogIn.tr,
                  onPressed: () {
                    onTapLogin(context);
                  },
                ),
                SizedBox(height: 18.h),
                FittedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 6.h),
                        child: SizedBox(
                          width: 72.h,
                          child: Divider(),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Text(
                            StringResources.strYouCanConnectWith.tr,
                            style:
                                CustomTextStyles.labelLargePoppinsBluegray300,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 6.h),
                        child: SizedBox(
                          width: 98.h,
                          child: Divider(
                            indent: 4.h,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                Row(
                  // alignment: Alignment.bottomCenter,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgFacebook,
                      height: 44.h,
                      width: 46.h,
                      alignment: Alignment.topLeft,
                      onTap: () {},
                      // margin: EdgeInsets.only(left: 76.h),
                    ),
                    SizedBox(width: 10.h),
                    CustomImageView(
                      imagePath: ImageConstant.imgGoogle,
                      height: 44.h,
                      width: 46.h,
                      alignment: Alignment.topRight,
                      onTap: onTapGoogle,
                      // margin: EdgeInsets.only(left: 76.h),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                GestureDetector(
                  onTap: () {
                    onTapTxtDonthaveaccount2();
                  },
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: StringResources.strDidNotHaveAccount.tr,
                          style: CustomTextStyles
                              .titleMediumMontserratBlack900Medium16,
                        ),
                        TextSpan(
                          text: StringResources.strSignUp.tr,
                          style: CustomTextStyles
                              .titleMediumMontserratBlack900Bold,
                        )
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                )
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

  /// Navigates to the onBoardingThreeScreen when the action is triggered.
  onTapImagethirtyfive() {
    Get.back();
  }

  /// Navigates to the forgotPasswordScreen when the action is triggered.
  onTapTxtForgotpassword() {
    Get.toNamed(AppRoutes.forgotPasswordScreen);
  }

  /// Navigates to the accountSetupFourScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    loginController.loginApi(context);
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtDonthaveaccount2() {
    Get.offNamed(AppRoutes.signUpScreen);
  }

  onTapGoogle() {
    loginController.launchGoogleAuth();
  }
}
