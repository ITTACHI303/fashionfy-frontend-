import 'package:ai_measurement/presentation/change_phone_number_screen/change_phone_controller/change_phone_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/app_export.dart';
import '../../core/utils/string_resources.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ChangePhoneNumberScreen extends StatelessWidget {
  ChangePhoneNumberScreen({Key? key})
      : super(
          key: key,
        );
  final controller = Get.put(ChangePhoneController());
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
              left: 26.h,
              top: 44.h,
              right: 26.h,
            ),
            child: Column(
              spacing: 16,
              mainAxisSize: MainAxisSize.max,
              children: [
                _buildInputone(context),
                CustomTextFormField(
                  controller: controller.newPhoneController,
                  hintText: StringResources.strNewNumber.tr,
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
                CustomTextFormField(
                  controller: controller.confirmPhoneController,
                  hintText: StringResources.strConfirmNewNumber.tr,
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
                // _buildInputtwo(context),
                CustomElevatedButton(
                  text: StringResources.strContinue.tr,
                  onPressed: () {
                    onTapContinue(context);
                  },
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
      height: 78.h,
      leadingWidth: 52.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgImage35,
        margin: EdgeInsets.only(
          left: 28.h,
          top: 5.h,
          bottom: 49.h,
        ),
        onTap: () {
          onTapImagethirtyfive();
        },
      ),
      centerTitle: true,
      title: Column(
        children: [
          AppbarTitle(
            text: StringResources.strChangeNumber.tr,
          ),
          SizedBox(
            height: 20.h,
          ),
          AppbarSubtitleTwo(
            text: StringResources.strUpdatePhone.tr,
            margin: EdgeInsets.symmetric(horizontal: 8.h),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInputone(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 12.h,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              StringResources.strEmailId.tr,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage14,
            height: 24.h,
            width: 26.h,
          )
        ],
      ),
    );
  }

  /// Navigates to the settingsScreen when the action is triggered.
  onTapImagethirtyfive() {
    Get.back();
  }

  /// Navigates to the changeNumberOtpScreen when the action is triggered.
  onTapContinue(context) {
    controller.changePhoneApi(context);
  }
}
