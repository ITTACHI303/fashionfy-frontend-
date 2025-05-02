import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/app_export.dart';
import '../../core/utils/string_resources.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';

class OnBoardingOneScreen extends StatelessWidget {
  const OnBoardingOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.whiteA700,
      body: SafeArea(
        child: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              height: 802.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img1a3634da7fbd4,
                    height: 774.h,
                    width: double.maxFinite,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.only(bottom: 28.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 22.h,
                        vertical: 58.h,
                      ),
                      decoration: AppDecoration.column16,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 56.h),
                          Text(
                            StringResources.strMeetYourStylist.tr,
                            style: theme.textTheme.headlineMedium,
                          ),
                          SizedBox(height: 10.h),
                          SizedBox(
                            width: double.maxFinite,
                            child: Text(
                              StringResources.strOnBoardingScreen1.tr,
                              maxLines: 5,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style:
                                  CustomTextStyles.titleSmallGray100.copyWith(
                                height: 1.51,
                              ),
                            ),
                          ),
                          SizedBox(height: 16.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgMobile,
                                height: 8.h,
                                width: 8.h,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgDot3,
                                height: 8.h,
                                width: 8.h,
                                onTap: () {
                                  onTapImgDotthreeone();
                                },
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgDot3,
                                height: 8.h,
                                width: 8.h,
                                onTap: () {
                                  onTapImgDotoneone();
                                },
                              )
                            ],
                          ),
                          SizedBox(height: 20.h),
                          CustomElevatedButton(
                            height: 58.h,
                            text: "Start Exploring",
                            buttonStyle: CustomButtonStyles.outlineGrayTL4,
                            buttonTextStyle: theme.textTheme.titleLarge!,
                            onPressed: () {
                              onTapStartexploring();
                            },
                          ),
                          SizedBox(height: 22.h),
                          GestureDetector(
                            onTap: () {
                              onTapTxtAlreadyhaveaccount2();
                            },
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Already have account?",
                                    style: CustomTextStyles
                                        .titleMediumMontserratMedium,
                                  ),
                                  TextSpan(
                                    text: " ",
                                  ),
                                  TextSpan(
                                    text: "Log in",
                                    style: CustomTextStyles
                                        .titleMediumMontserratBold,
                                  )
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
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

  /// Navigates to the onBoardingTwoScreen when the action is triggered.
  onTapImgDotthreeone() {
    Get.toNamed(AppRoutes.onBoardingTwoScreen);
  }

  /// Navigates to the onBoardingThreeScreen when the action is triggered.
  onTapImgDotoneone() {
    Get.toNamed(AppRoutes.onBoardingThreeScreen);
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapStartexploring() {
    Get.toNamed(AppRoutes.signUpScreen);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtAlreadyhaveaccount2() {
    Get.toNamed(AppRoutes.loginScreen);
  }
}
