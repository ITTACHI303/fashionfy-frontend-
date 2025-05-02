import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/app_export.dart';
import '../../core/utils/string_resources.dart';

class SignInTwelveScreen extends StatefulWidget {
  const SignInTwelveScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<SignInTwelveScreen> createState() => _SignInTwelveScreenState();
}

class _SignInTwelveScreenState extends State<SignInTwelveScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      Get.offNamed(AppRoutes.settingsScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.whiteA700,
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 50.h,
            top: 216.h,
            right: 50.h,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
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
              Text(
                StringResources.strCongratulationsNumberUpdated.tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium!.copyWith(
                  height: 1.54,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
