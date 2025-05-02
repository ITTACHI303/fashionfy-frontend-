import 'dart:async';

import 'package:ai_measurement/core/utils/string_resources.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class CamPermissionOneScreen extends StatefulWidget {
  const CamPermissionOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<CamPermissionOneScreen> createState() => _CamPermissionOneScreenState();
}

class _CamPermissionOneScreenState extends State<CamPermissionOneScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 6), () {
      Get.offNamed(AppRoutes.camPermissionTwoScreen);
    });

    controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: controller, curve: Curves.linear),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

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
              padding: EdgeInsets.only(top: 22.h),
              child: Column(
                children: [
                  Stack(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgFreepikCandid650x402,
                        height: 650.h,
                        width: double.maxFinite,
                      ),
                      AnimatedBuilder(
                        animation: animation,
                        builder: (context, child) {
                          return Positioned(
                            top: animation.value * 650.h,
                            left: 0,
                            right: 0,
                            child: Container(
                              width: double.maxFinite,
                              height: 5.h,
                              color: Colors.green.withOpacity(0.8),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
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
      height: 78.h,
      centerTitle: true,
      title: Column(
        children: [
          AppbarTitle(
            text: StringResources.strAnalyzing.tr,
            margin: EdgeInsets.only(
              left: 17.h,
              right: 20.h,
            ),
          ),
          SizedBox(height: 20.h),
          AppbarSubtitleTwo(
            text: StringResources.strPleaseWaitForAWhile.tr,
          )
        ],
      ),
    );
  }
}
