import 'dart:async';

import 'package:ai_measurement/core/utils/string_resources.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/app_export.dart';

class SignInEightScreen extends StatefulWidget {
  const SignInEightScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<SignInEightScreen> createState() => _SignInEightScreenState();
}

class _SignInEightScreenState extends State<SignInEightScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      Get.offNamed(AppRoutes.signInNineScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.whiteA700,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: SizedBox(
            width: double.maxFinite,
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
                SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    StringResources.strCongratulationsEmailUpdated.tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyMedium!.copyWith(
                      height: 1.54,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
