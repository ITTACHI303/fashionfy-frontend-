import 'package:ai_measurement/core/app_export.dart';
import 'package:ai_measurement/core/utils/language_button.dart';
import 'package:ai_measurement/core/utils/string_resources.dart';
import 'package:ai_measurement/presentation/edit_profile_one_screen/language_controller/language_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../core/network/session/session_helper.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  final languageController = LanguageController();
  bool isLastPage = false;
  bool isFirstPage = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  isFirstPage = index == 0;
                  isLastPage = index == 2;
                });
              },
              children: [
                buildPage(
                    imagePath: ImageConstant.img1a3634da7fbd4,
                    title: StringResources.strMeetYourStylist.tr,
                    description: StringResources.strOnBoardingScreen1.tr),
                buildPage(
                    imagePath: ImageConstant.img1a3634da7fbd4774x402,
                    title: StringResources.strMeetYourStylist.tr,
                    description: StringResources.strOnBoardingScreen2.tr),
                buildPage(
                    imagePath: ImageConstant.img1a3634da7fbd41,
                    title: StringResources.strMeetYourStylist.tr,
                    description: StringResources.strOnBoardingScreen3.tr),
              ],
            ),

            Positioned(
                top: 20.h,
                right: 20.h,
                child: LanguageButton(
                    langCode: Get.locale!.languageCode,
                    onTap: () async {
                      if (Get.locale!.languageCode == "en") {
                        languageController.changeLanguage(Locale("fr"));
                        await SessionHelper().setSelectedLanguage("fr");
                      } else if (Get.locale!.languageCode == "fr") {
                        languageController.changeLanguage(Locale("ar"));
                        await SessionHelper().setSelectedLanguage("ar");
                      } else {
                        languageController.changeLanguage(Locale("en"));
                        await SessionHelper().setSelectedLanguage("en");
                      }
                    })),

            // Page indicator at bottom
            Positioned(
              bottom: 60.h,
              left: 0.h,
              right: 0.h,
              child: Column(
                children: [
                  Center(
                    child: SmoothPageIndicator(
                      controller: _controller,
                      count: 3,
                      effect: ScrollingDotsEffect(
                        dotColor: appTheme.blueGray800,
                        activeDotColor: appTheme.whiteA700,
                        dotWidth: 7.h,
                        dotHeight: 7.h,
                      ),
                      // ExpandingDotsEffect(
                      //   activeDotColor: Colors.orange,
                      //   dotHeight: 4,
                      //   dotWidth: 4,
                      // ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Padding(
                    padding: EdgeInsets.only(left: 23.h, right: 23.h),
                    child: CustomElevatedButton(
                      height: 58.h,
                      text: StringResources.strStartExploring.tr,
                      buttonStyle: CustomButtonStyles.outlineGrayTL4,
                      buttonTextStyle: theme.textTheme.titleLarge!,
                      onPressed: () {
                        onTapStartexploring();
                      },
                    ),
                  ),
                  SizedBox(height: 20.h),
                  GestureDetector(
                    onTap: () {
                      onTapTxtAlreadyhaveaccount2();
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: StringResources.strAlreadyHaveAccount.tr,
                            style: CustomTextStyles.titleMediumMontserratMedium,
                          ),
                          TextSpan(
                            text: StringResources.strLogIn.tr,
                            style: CustomTextStyles.titleMediumMontserratMedium,
                          )
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPage(
      {required String imagePath,
      required String title,
      required String description}) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 50.h),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.transparent,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              title,
              style: theme.textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.h),
            Text(
              description,
              style: theme.textTheme.bodyMedium!.copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 180.h),
          ],
        ),
      ),
    );
  }

  onTapStartexploring() {
    Get.offAllNamed(AppRoutes.signUpScreen);
  }

  onTapTxtAlreadyhaveaccount2() {
    Get.offAllNamed(AppRoutes.loginScreen);
  }
}
