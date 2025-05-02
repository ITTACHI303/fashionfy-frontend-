import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/app_export.dart';
import '../../core/utils/string_resources.dart';
import '../../widgets/custom_elevated_button.dart';

class SignInTwoScreen extends StatelessWidget {
  const SignInTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.whiteA700,
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(28.h),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 84.h,
                width: 86.h,
                decoration: AppDecoration.fillTeal.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder42,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgCheckmark,
                      height: 24.h,
                      width: 26.h,
                    )
                  ],
                ),
              ),
              SizedBox(height: 14.h),
              Text(
                StringResources.strSuccess.tr,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.headlineSmallTeal500.copyWith(
                  height: 1.19,
                ),
              ),
              SizedBox(height: 6.h),
              SizedBox(
                width: double.maxFinite,
                child: Text(
                  StringResources.strCongratulationsPasswordUpdated.tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    height: 1.54,
                  ),
                ),
              ),
              SizedBox(height: 34.h),
              CustomElevatedButton(
                text: StringResources.strContinue.tr,
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

  /// Navigates to the loginScreen when the action is triggered.
  onTapContinue() {
    Get.offAllNamed(AppRoutes.loginScreen);
  }
}
