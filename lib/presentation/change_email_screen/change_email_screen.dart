import 'package:ai_measurement/core/utils/string_resources.dart';
import 'package:ai_measurement/presentation/change_email_screen/change_email_controller/change_email_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ChangeEmailScreen extends StatelessWidget {
  ChangeEmailScreen({Key? key})
      : super(
          key: key,
        );
  final controller = Get.put(ChangeEmailController());

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
              mainAxisSize: MainAxisSize.max,
              children: [_buildColumnemail(context)],
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
            text: StringResources.strChangeEmail.tr,
            margin: EdgeInsets.symmetric(horizontal: 10.h),
          ),
          SizedBox(
            height: 20.h,
          ),
          AppbarSubtitleTwo(
            text: StringResources.strUpdateEmail.tr,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnemail(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Column(
        spacing: 16,
        children: [
          Container(
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
          ),
          CustomTextFormField(
            controller: controller.emailOneController,
            hintText: StringResources.strNewEmail.tr,
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
            controller: controller.confirmEmailOneController,
            hintText: StringResources.strConfirmNewEmail.tr,
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
          // Container(
          //   width: double.maxFinite,
          //   padding: EdgeInsets.only(
          //     left: 22.h,
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
          //         "Confirm New Email",
          //         style: theme.textTheme.bodyMedium,
          //       )
          //     ],
          //   ),
          // ),
          CustomElevatedButton(
            text: StringResources.strContinue.tr,
            onPressed: () {
              onTapContinue(context);
            },
          )
        ],
      ),
    );
  }

  /// Navigates to the settingsScreen when the action is triggered.
  onTapImagethirtyfive() {
    Get.back();
  }

  /// Navigates to the changeEmailOtpScreen when the action is triggered.
  onTapContinue(context) {
    controller.changeEmailApi(context);
  }
}
