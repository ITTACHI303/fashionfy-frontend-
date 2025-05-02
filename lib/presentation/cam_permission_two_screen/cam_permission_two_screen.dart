import 'package:ai_measurement/core/utils/string_resources.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../how_it_works_screen/how_it_works_screen.dart';

class CamPermissionTwoScreen extends StatelessWidget {
  CamPermissionTwoScreen({Key? key})
      : super(
          key: key,
        );
  var openCamera = HowItWorksScreen();

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
              height: 720.h,
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Stack(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgFreepikCandid652x402,
                        height: 652.h,
                        width: double.maxFinite,
                      ),
                      Positioned(
                        top: 153.h,
                        left: 150.h,
                        child: Container(
                          width: 98.h,
                          height: 2.h,
                          color: Colors.yellow,
                        ),
                      ),
                      Positioned(
                        top: 165.h,
                        left: 123.h,
                        child: Transform.rotate(
                          angle: 6.58,
                          child: Container(
                            width: 27.h,
                            height: 2.h,
                            color: Colors.pinkAccent,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 240.h,
                        left: 145.h,
                        child: Container(
                          width: 98.h,
                          height: 2.h,
                          color: Color(0xFF105BFE),
                        ),
                      ),
                      Positioned(
                        top: 271.h,
                        left: 145.h,
                        child: Container(
                          width: 103.h,
                          height: 2.h,
                          color: Color(0xFF4506FF),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: 3.h,
                          height: 630.h,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: 42.h,
                        bottom: 40.h,
                      ),
                      child: Column(
                        spacing: 10,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImage37,
                            height: 40.h,
                            width: 40.h,
                            onTap: () {
                              onTapImgImagethirtyseve();
                            },
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage19,
                            height: 40.h,
                            width: 40.h,
                            onTap: () {
                              onTapImgImagenineteen();
                            },
                          )
                        ],
                      ),
                    ),
                  )
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
      height: 80.h,
      leadingWidth: 52.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgImage35,
        margin: EdgeInsets.only(
          left: 28.h,
          top: 4.h,
          bottom: 51.h,
        ),
        onTap: () {
          onTapImagethirtyfive();
        },
      ),
      centerTitle: true,
      title: Column(
        children: [
          AppbarTitle(
            text: StringResources.strAnalyzed.tr,
            margin: EdgeInsets.only(
              left: 53.h,
              right: 54.h,
            ),
          ),
          SizedBox(height: 20.h),
          AppbarSubtitleTwo(
            text: StringResources.strYourMeasurementsAreReady.tr,
          )
        ],
      ),
    );
  }

  /// Navigates to the capturedPhotoScreen when the action is triggered.
  onTapImagethirtyfive() {
    Get.back();
  }

  /// Navigates to the openCameraOneScreen when the action is triggered.
  onTapImgImagethirtyseve() {
    openCamera.pickFromCamera();
  }

  /// Navigates to the camPermissionThreeScreen when the action is triggered.
  onTapImgImagenineteen() {
    Get.offNamed(AppRoutes.camPermissionThreeScreen);
  }
}
