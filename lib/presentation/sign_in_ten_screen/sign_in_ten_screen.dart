import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/app_export.dart';
import '../../core/utils/string_resources.dart';
import '../../widgets/custom_elevated_button.dart';

class SignInTenScreen extends StatelessWidget {
  const SignInTenScreen({Key? key})
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 18.h),
              Text(
                StringResources.strSuccess.tr,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: theme.textTheme.headlineSmall!.copyWith(
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

  onTapContinue() {
    Get.offNamed(AppRoutes.signInTwoScreen);
  }
}
