import 'dart:io';

import 'package:ai_measurement/presentation/sign_in_five_screen/set_up_profile_controller/set_up_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/app_export.dart';
import '../../core/utils/string_resources.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_floating_text_field.dart';

// ignore_for_file: must_be_immutable
class SignInFiveScreen extends StatefulWidget {
  SignInFiveScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<SignInFiveScreen> createState() => _SignInFiveScreenState();
}

class _SignInFiveScreenState extends State<SignInFiveScreen> {
  SetUpProfileController setUpProfileController =
      Get.put(SetUpProfileController());

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.whiteA700,
      appBar: _buildAppbar(context),
      body: SafeArea(
        top: false,
        child: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(
                  left: 26.h,
                  top: 36.h,
                  right: 26.h,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 104.h,
                      width: 104.h,
                      child: Obx(
                        () => Stack(
                          alignment: Alignment.center,
                          children: [
                            setUpProfileController
                                    .selectedImagePath.value.isEmpty
                                ? CustomImageView(
                                    imagePath: ImageConstant.imgEllipse1439,
                                    height: 104.h,
                                    width: 102.h,
                                    radius: BorderRadius.circular(
                                      50.h,
                                    ),
                                  )
                                : ClipOval(
                                    child: Image.file(
                                      File(setUpProfileController
                                          .selectedImagePath.value
                                          .toString()),
                                      fit: BoxFit.cover,
                                      width: 130,
                                      height: 130,
                                    ),
                                  ),
                            CustomImageView(
                              imagePath: ImageConstant.imgImage13,
                              height: 20.h,
                              width: 20.h,
                              alignment: Alignment.bottomRight,
                              margin: EdgeInsets.only(
                                right: 4.h,
                                bottom: 6.h,
                              ),
                              onTap: () {
                                setState(() {
                                  setUpProfileController
                                      .showBottomSheet(context);
                                });
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 36.h),
                    _buildName(context),
                    SizedBox(height: 14.h),
                    _buildHeight(context),
                    SizedBox(height: 14.h),
                    _buildGender(context),
                    SizedBox(height: 14.h),
                    _buildWeight(context),
                    SizedBox(height: 14.h),
                    _buildBodyType(context),
                    SizedBox(height: 14.h),
                    _buildAge(context),
                    SizedBox(height: 20.h),
                    _buildCreateprofile(context),
                    SizedBox(height: 38.h)
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
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      height: 80.h,
      leadingWidth: 52.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgImage35,
        margin: EdgeInsets.only(
          left: 28.h,
          top: 5.h,
          bottom: 51.h,
        ),
        onTap: () {
          onTapArrow1oneone();
        },
      ),
      centerTitle: true,
      title: Column(
        children: [
          SizedBox(
            // width: double.maxFinite,
            child: AppbarTitle(
              text: StringResources.strSetUpYourProfile.tr,
              // margin: EdgeInsets.only(
              //   left: 9.h,
              //   right: 10.h,
              // ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          AppbarSubtitleTwo(
            text: StringResources.strEnterDetails.tr,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return CustomFloatingTextField(
      controller: setUpProfileController.nameController,
      labelText: StringResources.strName.tr,
      labelStyle: CustomTextStyles.titleSmallSemiBold,
      hintText: StringResources.strName.tr,
      contentPadding: EdgeInsets.fromLTRB(18.h, 18.h, 18.h, 10.h),
      borderDecoration: FloatingTextFormFieldStyleHelper.fillOnPrimary,
      filled: true,
      fillColor: theme.colorScheme.onPrimary,
    );
  }

  /// Section Widget
  Widget _buildHeight(BuildContext context) {
    return CustomFloatingTextField(
      controller: setUpProfileController.heightController,
      labelText: StringResources.strHeight.tr,
      textInputType: TextInputType.number,
      labelStyle: CustomTextStyles.titleSmallSemiBold,
      hintText: StringResources.strHeight.tr,
      contentPadding: EdgeInsets.fromLTRB(18.h, 18.h, 18.h, 10.h),
      borderDecoration: FloatingTextFormFieldStyleHelper.fillOnPrimary,
      filled: true,
      fillColor: theme.colorScheme.onPrimary,
    );
  }

  /// Section Widget
  Widget _buildGender(BuildContext context) {
    return CustomFloatingTextField(
      controller: setUpProfileController.genderController,
      labelText: StringResources.strGender.tr,
      labelStyle: CustomTextStyles.titleSmallSemiBold,
      hintText: StringResources.strGender.tr,
      contentPadding: EdgeInsets.fromLTRB(18.h, 18.h, 18.h, 10.h),
      borderDecoration: FloatingTextFormFieldStyleHelper.fillOnPrimary,
      filled: true,
      fillColor: theme.colorScheme.onPrimary,
    );
  }

  /// Section Widget
  Widget _buildWeight(BuildContext context) {
    return CustomFloatingTextField(
      controller: setUpProfileController.weightController,
      labelText: StringResources.strWeight.tr,
      textInputType: TextInputType.number,
      labelStyle: CustomTextStyles.titleSmallSemiBold,
      hintText: StringResources.strWeight.tr,
      contentPadding: EdgeInsets.fromLTRB(18.h, 18.h, 18.h, 10.h),
      borderDecoration: FloatingTextFormFieldStyleHelper.fillOnPrimary,
      filled: true,
      fillColor: theme.colorScheme.onPrimary,
    );
  }

  /// Section Widget
  Widget _buildBodyType(BuildContext context) {
    return CustomFloatingTextField(
      controller: setUpProfileController.bodyTypeController,
      labelText: StringResources.strBodyType.tr,
      labelStyle: CustomTextStyles.titleSmallSemiBold,
      hintText: StringResources.strBodyType.tr,
      contentPadding: EdgeInsets.fromLTRB(18.h, 18.h, 18.h, 10.h),
      borderDecoration: FloatingTextFormFieldStyleHelper.fillOnPrimary,
      filled: true,
      fillColor: theme.colorScheme.onPrimary,
    );
  }

  /// Section Widget
  Widget _buildAge(BuildContext context) {
    return CustomFloatingTextField(
      controller: setUpProfileController.ageController,
      labelText: StringResources.strAge.tr,
      textInputType: TextInputType.number,
      labelStyle: CustomTextStyles.titleSmallSemiBold,
      hintText: StringResources.strAge.tr,
      textInputAction: TextInputAction.done,
      contentPadding: EdgeInsets.fromLTRB(18.h, 18.h, 18.h, 10.h),
      borderDecoration: FloatingTextFormFieldStyleHelper.fillOnPrimary,
      filled: true,
      fillColor: theme.colorScheme.onPrimary,
    );
  }

  /// Section Widget
  Widget _buildCreateprofile(BuildContext context) {
    return CustomElevatedButton(
      text: StringResources.strCreateProfile.tr,
      onPressed: () {
        onTapCreateprofile(context);
      },
    );
  }

  /// Navigates to the accountSetupScreen when the action is triggered.
  onTapArrow1oneone() {
    Get.back();
  }

  /// Navigates to the signInSixScreen when the action is triggered.
  onTapCreateprofile(BuildContext context) {
    setUpProfileController.setUpProfileApi(context);
  }
}
