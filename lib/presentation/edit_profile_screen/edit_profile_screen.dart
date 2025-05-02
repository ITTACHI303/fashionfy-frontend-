import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/app_export.dart';
import '../../core/utils/string_resources.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_floating_text_field.dart';
import 'edit_profile_screen_controller/edit_profile_screen_controller.dart';

// ignore_for_file: must_be_immutable
class EditProfileScreen extends StatefulWidget {
  EditProfileScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final controller = Get.put(EditProfileScreenController());

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
                  top: 12.h,
                  right: 26.h,
                ),
                child: Column(
                  children: [
                    Text(
                      StringResources.strUpdateProfile.tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                    SizedBox(height: 36.h),
                    SizedBox(
                      height: 104.h,
                      width: 104.h,
                      child: Obx(
                        () => Stack(
                          alignment: Alignment.center,
                          children: [
                            controller.selectedImagePath.value.isEmpty
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
                                      File(controller.selectedImagePath.value
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
                                  controller.showBottomSheet(context);
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
                    _buildSavechanges(context),
                    SizedBox(height: 62.h)
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
      height: 48.h,
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
        text: StringResources.strEditProfile.tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return CustomFloatingTextField(
      controller: controller.nameController,
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
      controller: controller.heightController,
      textInputType: TextInputType.number,
      labelText: StringResources.strHeight.tr,
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
      controller: controller.genderController,
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
      controller: controller.weightController,
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
      controller: controller.bodyTypeController,
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
      controller: controller.ageController,
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
  Widget _buildSavechanges(BuildContext context) {
    return CustomElevatedButton(
      text: StringResources.strSaveChanges.tr,
      onPressed: () {
        onTapSavechanges(context);
      },
    );
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapImagethirtyfive() {
    Get.back();
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapSavechanges(context) {
    controller.editProfileApi(context);
  }
}
