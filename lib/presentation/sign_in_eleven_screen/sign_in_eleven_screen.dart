import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/app_export.dart';
import '../../core/utils/string_resources.dart';

class SignInElevenScreen extends StatefulWidget {
  const SignInElevenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<SignInElevenScreen> createState() => _SignInElevenScreenState();
}

class _SignInElevenScreenState extends State<SignInElevenScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      Get.offNamed(AppRoutes.signInTwelveScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.whiteA700,
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(50.h),
          child: Column(
            spacing: 6,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                StringResources.strSuccess.tr,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: theme.textTheme.headlineSmall!.copyWith(
                  height: 1.19,
                ),
              ),
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
