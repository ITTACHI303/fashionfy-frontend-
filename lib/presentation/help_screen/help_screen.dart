import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/app_export.dart';
import '../../core/utils/string_resources.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class HelpScreen extends StatelessWidget {
  HelpScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController inputOneController = TextEditingController();
  TextEditingController inputTwoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.whiteA700,
      appBar: _buildAppbar(context),
      body: SafeArea(
        top: false,
        child: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(
                left: 26.h,
                top: 8.h,
                right: 26.h,
              ),
              child: Column(
                children: [
                  Text(
                    StringResources.strExperiencingAnyIssue.tr,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyMedium!.copyWith(
                      height: 1.54,
                    ),
                  ),
                  SizedBox(height: 106.h),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      StringResources.strTitle.tr,
                      style: CustomTextStyles.titleSmallMedium,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  _buildInputOne(context),
                  SizedBox(height: 28.h),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      StringResources.strExplainProblem.tr,
                      style: CustomTextStyles.titleSmallMedium,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  CustomTextFormField(
                    controller: inputTwoController,
                    hintText: StringResources.strAddQueryHere.tr,
                    hintStyle: CustomTextStyles.bodyMediumBluegray800,
                    textStyle: theme.textTheme.bodyMedium,
                    textInputAction: TextInputAction.done,
                    maxLines: 7,
                    contentPadding: EdgeInsets.fromLTRB(18.h, 16.h, 18.h, 12.h),
                    borderDecoration: TextFormFieldStyleHelper.fillOnPrimary,
                    filled: true,
                    fillColor: theme.colorScheme.onPrimary,
                  ),
                  SizedBox(height: 148.h),
                  CustomElevatedButton(
                      text: StringResources.strSubmit.tr,
                      onPressed: () {
                        onTapSubmit();
                      }),
                  SizedBox(height: 38.h)
                ],
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
        text: StringResources.strHelp.tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildInputOne(BuildContext context) {
    return CustomTextFormField(
      controller: inputOneController,
      hintText: StringResources.strAddQueryHere.tr,
      hintStyle: CustomTextStyles.bodyMediumBluegray800,
      textStyle: theme.textTheme.bodyMedium,
      textInputAction: TextInputAction.done,
      contentPadding: EdgeInsets.fromLTRB(18.h, 16.h, 18.h, 12.h),
      borderDecoration: TextFormFieldStyleHelper.fillOnPrimary,
      filled: true,
      fillColor: theme.colorScheme.onPrimary,
    );
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapImagethirtyfive() {
    Get.back();
  }

  onTapSubmit() {
    Get.back();
  }
}
