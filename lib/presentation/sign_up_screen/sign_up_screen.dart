import 'package:ai_measurement/presentation/sign_up_screen/sign_up_controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/app_export.dart';
import '../../core/utils/string_resources.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key})
      : super(
          key: key,
        );

  var isAccepted = false.obs;
  final SignUpController signUpController = Get.put(SignUpController());
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.whiteA700,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(
                  left: 26.h,
                  top: 52.h,
                  right: 26.h,
                ),
                child: Column(
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
                    SizedBox(height: 24.h),
                    SizedBox(
                      width: double.maxFinite,
                      child: Text(
                        StringResources.strRegisterToStart.tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodyMedium!.copyWith(
                          height: 1.54,
                        ),
                      ),
                    ),
                    SizedBox(height: 18.h),
                    _buildEmail(context),
                    SizedBox(height: 14.h),
                    _buildPhone(context),
                    SizedBox(height: 14.h),
                    _buildPassword(context),
                    SizedBox(height: 14.h),
                    _buildConfirmPassword(context),
                    SizedBox(height: 16.h),
                    FittedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          GestureDetector(
                            onTap: () {
                              isAccepted.value = !isAccepted.value;
                            },
                            child: Obx(
                              () => Container(
                                height: 16.h,
                                width: 16.h,
                                decoration: BoxDecoration(
                                  color: isAccepted.value
                                      ? appTheme
                                          .indigo50 // Change to selected color
                                      : appTheme.whiteA700,
                                  borderRadius: BorderRadius.circular(8.h),
                                  border: Border.all(
                                    color: appTheme.indigo50,
                                    width: 1.92.h,
                                  ),
                                ),
                                child: isAccepted.value
                                    ? Icon(Icons.check,
                                        color: Colors.white, size: 12.h)
                                    : SizedBox.shrink(),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text(
                              StringResources.strByContinuing.tr,
                              style: CustomTextStyles.bodySmallGray500,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              onTapTxtPrivacypolicy();
                            },
                            child: Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text(
                                StringResources.strPrivacyPolicy.tr,
                                style: theme.textTheme.labelMedium,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   mainAxisSize: MainAxisSize.min,
                    //   children: [
                    //     Container(
                    //       height: 16.h,
                    //       width: 16.h,
                    //       decoration: BoxDecoration(
                    //         color: appTheme.whiteA700,
                    //         borderRadius: BorderRadius.circular(
                    //           8.h,
                    //         ),
                    //         border: Border.all(
                    //           color: appTheme.indigo50,
                    //           width: 1.92.h,
                    //         ),
                    //       ),
                    //     ),
                    //     Padding(
                    //       padding: EdgeInsets.only(left: 6.h),
                    //       child: Text(
                    //         "By continuing you accept our",
                    //         style: CustomTextStyles.bodySmallGray500,
                    //       ),
                    //     ),
                    //     GestureDetector(
                    //       onTap: () {
                    //         onTapTxtPrivacypolicy();
                    //       },
                    //       child: Padding(
                    //         padding: EdgeInsets.only(left: 2.h),
                    //         child: Text(
                    //           "Privacy Policy",
                    //           style: theme.textTheme.labelMedium,
                    //         ),
                    //       ),
                    //     )
                    //   ],
                    // ),
                    SizedBox(height: 20.h),
                    _buildSignupone(context),
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
                                style: CustomTextStyles
                                    .labelLargePoppinsBluegray300,
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
                        // Align(
                        //   alignment: Alignment.bottomRight,
                        //   child: Container(
                        //     height: 44.h,
                        //     width: 46.h,
                        //     margin: EdgeInsets.only(
                        //       right: 74.h,
                        //       bottom: 10.h,
                        //     ),
                        //     child: Stack(
                        //       alignment: Alignment.bottomRight,
                        //       children: [
                        //         CustomImageView(
                        //           imagePath: ImageConstant.imgVector,
                        //           height: 18.h,
                        //           width: double.maxFinite,
                        //           alignment: Alignment.bottomLeft,
                        //           margin: EdgeInsets.only(left: 2.h),
                        //         ),
                        //         CustomImageView(
                        //           imagePath: ImageConstant.imgVectorTeal500,
                        //           height: 12.h,
                        //           width: 16.h,
                        //           margin: EdgeInsets.only(right: 6.h),
                        //         ),
                        //         CustomImageView(
                        //           imagePath: ImageConstant.imgVectorYellow600,
                        //           height: 22.h,
                        //           width: 12.h,
                        //           alignment: Alignment.centerLeft,
                        //         ),
                        //         CustomImageView(
                        //           imagePath: ImageConstant.imgVectorBlueA200,
                        //           height: 20.h,
                        //           width: 24.h,
                        //           margin: EdgeInsets.only(bottom: 4.h),
                        //         ),
                        //         CustomImageView(
                        //           imagePath: ImageConstant.imgVectorIndigoA400,
                        //           height: 20.h,
                        //           width: 24.h,
                        //           margin: EdgeInsets.only(bottom: 4.h),
                        //         ),
                        //         CustomImageView(
                        //           imagePath: ImageConstant.imgVectorYellow900,
                        //           height: 18.h,
                        //           width: double.maxFinite,
                        //           alignment: Alignment.topLeft,
                        //           margin: EdgeInsets.only(left: 2.h),
                        //         ),
                        //         CustomImageView(
                        //           imagePath:
                        //               ImageConstant.imgVectorDeepOrangeA400,
                        //           height: 12.h,
                        //           width: 16.h,
                        //           alignment: Alignment.topRight,
                        //           margin: EdgeInsets.only(right: 6.h),
                        //         )
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        CustomImageView(
                          imagePath: ImageConstant.imgFacebook,
                          height: 44.h,
                          width: 46.h,
                          alignment: Alignment.topLeft,
                          // margin: EdgeInsets.only(left: 80.h),
                        ),
                        SizedBox(
                          width: 10.h,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgGoogle,
                          height: 44.h,
                          width: 46.h,
                          alignment: Alignment.topLeft,
                          // margin: EdgeInsets.only(left: 80.h),
                        )
                      ],
                    ),
                    SizedBox(height: 20.h),
                    GestureDetector(
                      onTap: () {
                        onTapTxtAlreadyhaveaccount2();
                      },
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: StringResources.strAlreadyHaveAccount.tr,
                              style: CustomTextStyles
                                  .titleMediumMontserratBlack900Medium16,
                            ),
                            TextSpan(
                              text: StringResources.strLogIn.tr,
                              style: CustomTextStyles
                                  .titleMediumMontserratBlack900Bold,
                            )
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: 12.h)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
      controller: signUpController.emailController,
      hintText: StringResources.strEmail.tr,
      textInputType: TextInputType.emailAddress,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 16.h,
      ),
      borderDecoration: TextFormFieldStyleHelper.fillOnPrimary,
      filled: true,
      fillColor: theme.colorScheme.onPrimary,
    );
  }

  /// Section Widget
  Widget _buildPhone(BuildContext context) {
    return CustomTextFormField(
      controller: signUpController.phoneController,
      hintText: StringResources.strPhone.tr,
      textInputType: TextInputType.phone,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 16.h,
      ),
      borderDecoration: TextFormFieldStyleHelper.fillOnPrimary,
      filled: true,
      fillColor: theme.colorScheme.onPrimary,
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
      controller: signUpController.passwordController,
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
    );
  }

  /// Section Widget
  Widget _buildConfirmPassword(BuildContext context) {
    return CustomTextFormField(
      controller: signUpController.confirmPasswordController,
      hintText: StringResources.strConfirmPassword.tr,
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
    );
    // return Container(
    //   width: double.maxFinite,
    //   padding: EdgeInsets.only(
    //     left: 18.h,
    //     top: 16.h,
    //     bottom: 16.h,
    //   ),
    //   decoration: AppDecoration.fillOnPrimary.copyWith(
    //     borderRadius: BorderRadiusStyle.roundedBorder4,
    //   ),
    //   child: Column(
    //     mainAxisSize: MainAxisSize.min,
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       Text(
    //         "Confirm Password",
    //         style: theme.textTheme.bodyMedium,
    //       )
    //     ],
    //   ),
    // );
  }

  /// Section Widget
  Widget _buildSignupone(BuildContext context) {
    return CustomElevatedButton(
      text: StringResources.strSignUp.tr,
      onPressed: () {
        onTapSignupone(context);
      },
    );
  }

  /// Navigates to the privacyPolicyScreen when the action is triggered.
  onTapTxtPrivacypolicy() {
    Get.toNamed(AppRoutes.privacyPolicyScreen);
  }

  /// Navigates to the emailVerificationScreen when the action is triggered.
  onTapSignupone(BuildContext context) {
    signUpController.signUpApi(context);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtAlreadyhaveaccount2() {
    Get.offNamed(AppRoutes.loginScreen);
  }
}
