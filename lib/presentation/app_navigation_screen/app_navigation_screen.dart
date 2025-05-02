import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/app_export.dart';
import '../adding_button_popup_fav3_tour_dialog/adding_button_popup_fav3_tour_dialog.dart';
import '../cam_permission_dialog/cam_permission_dialog.dart';
import '../popup_showing_worn_outfit_dialog/popup_showing_worn_outfit_dialog.dart';
import '../when_clicked_on_fav_product_icon_dialog/when_clicked_on_fav_product_icon_dialog.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFFFFFF),
      body: SafeArea(
        child: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0XFFFFFFFF),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: Text(
                        "App Navigation",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0XFF000000),
                          fontSize: 20.fSize,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Text(
                        "Check your app's UI from the below demo screens of your app.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0XFF888888),
                          fontSize: 16.fSize,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Divider(
                      height: 1.h,
                      thickness: 1.h,
                      color: Color(0XFF000000),
                    )
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "favorites-2 (custom title)",
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.favorites2CustomTitleScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "favorites-3 (custom title)",
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.favorites3CustomTitleScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "edit profile",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.editProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Change Password",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.changePasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Change Password One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.changePasswordOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "sign in",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "sign in One",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInOneScreen),
                        ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle:
                        //       "adding button popup  fav2(party) - Dialog",
                        //   onTapScreenTitle: () => onTapDialogTitle(
                        //       context, AddingButtonPopupFav2PartyDialog()),
                        // ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "adding button popup fav3(tour) - Dialog",
                          onTapScreenTitle: () => onTapDialogTitle(
                              context, AddingButtonPopupFav3TourDialog()),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "sign in Two",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "sign up",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "email verification",
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.emailVerificationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "sign in Three",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "sign in Four",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "account setup",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.accountSetupScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "sign in Five",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "sign in Six",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInSixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "sign in Seven",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInSevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "account setup Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.accountSetupFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "how it works",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.howItWorksScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "open camera",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.openCameraScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "cam permission - Dialog",
                          onTapScreenTitle: () =>
                              onTapDialogTitle(context, CamPermissionDialog()),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "captured photo",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.capturedPhotoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "cam permission One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.camPermissionOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "cam permission Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.camPermissionTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "cam permission Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.camPermissionThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "cam permission Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.camPermissionFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Search",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "favorites-One",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.favoritesOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "profile",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "settings",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.settingsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Change Email",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.changeEmailScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "change email otp",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.changeEmailOtpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "sign in Eight",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInEightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "sign in Nine",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInNineScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "edit profile One",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.editProfileOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "on boarding-One",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onBoardingOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "on boarding-Two",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onBoardingTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "on boarding-Three",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onBoardingThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "login",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "forgot password",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "forgot password 1a",
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.forgotPassword1aScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Reset-email otp",
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.resetPasswordOtpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Reset-New Password",
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.resetNewPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "sign in Ten",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInTenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "popup showing worn outfit - Dialog",
                          onTapScreenTitle: () => onTapDialogTitle(
                              context, PopupShowingWornOutfitDialog()),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "forgot password 1b",
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.forgotPassword1bScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Reset-phone otp",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.resetPhoneOtpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "help",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.helpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Change Phone Number",
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.changePhoneNumberScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "change number otp",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.changeNumberOtpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "sign in Eleven",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInElevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "sign in Twelve",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInTwelveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Search One",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Search Two",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "open camera One",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.openCameraOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "VR",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.vrScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "cam permission Five",
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.camPermissionFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "cam permission Six",
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.camPermissionSixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "cam permission Seven",
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.camPermissionSevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "when clicked on fav product icon - Dialog",
                          onTapScreenTitle: () => onTapDialogTitle(
                              context, WhenClickedOnFavProductIconDialog()),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "About Us",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.aboutUsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Privacy Policy",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.privacyPolicyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Terms & Conditions",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.termsConditionsScreen),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Common click event for dialog
  void onTapDialogTitle(
    BuildContext context,
    Widget className,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: className,
          backgroundColor: Colors.transparent,
          insetPadding: EdgeInsets.zero,
        );
      },
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                screenTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            SizedBox(height: 5.h),
            Divider(
              height: 1.h,
              thickness: 1.h,
              color: Color(0XFF888888),
            )
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    String routeName,
  ) {
    Get.toNamed(routeName);
  }
}
