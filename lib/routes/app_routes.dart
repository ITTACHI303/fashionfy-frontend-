import 'package:ai_measurement/presentation/bottom_navigation_bar_screen/bottom_navigation_bar_screen.dart';
import 'package:ai_measurement/presentation/on_boarding_screen/on_boarding_screen.dart';
import 'package:ai_measurement/presentation/popup_showing_worn_outfit_dialog/popup_showing_worn_outfit_dialog.dart';
import 'package:ai_measurement/presentation/reset_password_otp_screen/reset_password_otp_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../presentation/about_us_screen/about_us_screen.dart';
import '../presentation/account_setup_four_screen/account_setup_four_screen.dart';
import '../presentation/account_setup_screen/account_setup_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/cam_permission_five_screen/cam_permission_five_screen.dart';
import '../presentation/cam_permission_four_screen/cam_permission_four_screen.dart';
import '../presentation/cam_permission_one_screen/cam_permission_one_screen.dart';
import '../presentation/cam_permission_seven_screen/cam_permission_seven_screen.dart';
import '../presentation/cam_permission_six_screen/cam_permission_six_screen.dart';
import '../presentation/cam_permission_three_screen/cam_permission_three_screen.dart';
import '../presentation/cam_permission_two_screen/cam_permission_two_screen.dart';
import '../presentation/captured_photo_screen/captured_photo_screen.dart';
import '../presentation/change_email_otp_screen/change_email_otp_screen.dart';
import '../presentation/change_email_screen/change_email_screen.dart';
import '../presentation/change_number_otp_screen/change_number_otp_screen.dart';
import '../presentation/change_password_one_screen/change_password_one_screen.dart';
import '../presentation/change_password_screen/change_password_screen.dart';
import '../presentation/change_phone_number_screen/change_phone_number_screen.dart';
import '../presentation/edit_profile_one_screen/edit_profile_one_screen.dart';
import '../presentation/edit_profile_screen/edit_profile_screen.dart';
import '../presentation/email_verification_screen/email_verification_screen.dart';
import '../presentation/favorites_2_custom_title_screen/favorites_2_custom_title_screen.dart';
import '../presentation/favorites_3_custom_title_screen/favorites_3_custom_title_screen.dart';
import '../presentation/favorites_one_screen/favorites_one_screen.dart';
import '../presentation/forgot_password_1a_screen/forgot_password_1a_screen.dart';
import '../presentation/forgot_password_1b_screen/forgot_password_1b_screen.dart';
import '../presentation/forgot_password_screen/forgot_password_screen.dart';
import '../presentation/help_screen/help_screen.dart';
import '../presentation/how_it_works_screen/how_it_works_screen.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/on_boarding_one_screen/on_boarding_one_screen.dart';
import '../presentation/on_boarding_three_screen/on_boarding_three_screen.dart';
import '../presentation/on_boarding_two_screen/on_boarding_two_screen.dart';
import '../presentation/open_camera_one_screen/open_camera_one_screen.dart';
import '../presentation/open_camera_screen/open_camera_screen.dart';
import '../presentation/privacy_policy_screen/privacy_policy_screen.dart';
import '../presentation/profile_screen/profile_screen.dart';
import '../presentation/reset_new_password_screen/reset_new_password_screen.dart';
import '../presentation/reset_phone_otp_screen/reset_phone_otp_screen.dart';
import '../presentation/search_one_screen/search_one_screen.dart';
import '../presentation/search_screen/search_screen.dart';
import '../presentation/search_two_screen/search_two_screen.dart';
import '../presentation/settings_screen/settings_screen.dart';
import '../presentation/sign_in_eight_screen/sign_in_eight_screen.dart';
import '../presentation/sign_in_eleven_screen/sign_in_eleven_screen.dart';
import '../presentation/sign_in_five_screen/sign_in_five_screen.dart';
import '../presentation/sign_in_four_screen/sign_in_four_screen.dart';
import '../presentation/sign_in_nine_screen/sign_in_nine_screen.dart';
import '../presentation/sign_in_one_screen/sign_in_one_screen.dart';
import '../presentation/sign_in_screen/sign_in_screen.dart';
import '../presentation/sign_in_seven_screen/sign_in_seven_screen.dart';
import '../presentation/sign_in_six_screen/sign_in_six_screen.dart';
import '../presentation/sign_in_ten_screen/sign_in_ten_screen.dart';
import '../presentation/sign_in_three_screen/sign_in_three_screen.dart';
import '../presentation/sign_in_twelve_screen/sign_in_twelve_screen.dart';
import '../presentation/sign_in_two_screen/sign_in_two_screen.dart';
import '../presentation/sign_up_screen/sign_up_screen.dart';
import '../presentation/terms_conditions_screen/terms_conditions_screen.dart';
import '../presentation/vr_screen/vr_screen.dart';

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String favorites2CustomTitleScreen =
      '/favorites_2_custom_title_screen';

  static const String favorites3CustomTitleScreen =
      '/favorites_3_custom_title_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String changePasswordScreen = '/change_password_screen';

  static const String changePasswordOneScreen = '/change_password_one_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String signInOneScreen = '/sign_in_one_screen';

  static const String signInTwoScreen = '/sign_in_two_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String emailVerificationScreen = '/email_verification_screen';

  static const String signInThreeScreen = '/sign_in_three_screen';

  static const String signInFourScreen = '/sign_in_four_screen';

  static const String accountSetupScreen = '/account_setup_screen';

  static const String signInFiveScreen = '/sign_in_five_screen';

  static const String signInSixScreen = '/sign_in_six_screen';

  static const String signInSevenScreen = '/sign_in_seven_screen';

  static const String accountSetupFourScreen = '/account_setup_four_screen';

  static const String howItWorksScreen = '/how_it_works_screen';

  static const String openCameraScreen = '/open_camera_screen';

  static const String capturedPhotoScreen = '/captured_photo_screen';

  static const String camPermissionOneScreen = '/cam_permission_one_screen';

  static const String camPermissionTwoScreen = '/cam_permission_two_screen';

  static const String camPermissionThreeScreen = '/cam_permission_three_screen';

  static const String camPermissionFourScreen = '/cam_permission_four_screen';

  static const String searchScreen = '/search_screen';

  static const String favoritesOneScreen = '/favorites_one_screen';

  static const String profileScreen = '/profile_screen';

  static const String profileInitialPage = '/profile_initial_page';

  static const String settingsScreen = '/settings_screen';

  static const String changeEmailScreen = '/change_email_screen';

  static const String changeEmailOtpScreen = '/change_email_otp_screen';

  static const String signInEightScreen = '/sign_in_eight_screen';

  static const String signInNineScreen = '/sign_in_nine_screen';

  static const String editProfileOneScreen = '/edit_profile_one_screen';

  static const String onBoardingOneScreen = '/on_boarding_one_screen';

  static const String onBoardingTwoScreen = '/on_boarding_two_screen';

  static const String onBoardingThreeScreen = '/on_boarding_three_screen';

  static const String loginScreen = '/login_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String forgotPassword1aScreen = '/forgot_password_1a_screen';

  static const String resetPasswordOtpScreen = '/reset_password_otp_screen';

  static const String resetNewPasswordScreen = '/reset_new_password_screen';

  static const String signInTenScreen = '/sign_in_ten_screen';

  static const String forgotPassword1bScreen = '/forgot_password_1b_screen';

  static const String resetPhoneOtpScreen = '/reset_phone_otp_screen';

  static const String helpScreen = '/help_screen';

  static const String changePhoneNumberScreen = '/change_phone_number_screen';

  static const String changeNumberOtpScreen = '/change_number_otp_screen';

  static const String signInElevenScreen = '/sign_in_eleven_screen';

  static const String signInTwelveScreen = '/sign_in_twelve_screen';

  static const String searchOneScreen = '/search_one_screen';

  static const String searchTwoScreen = '/search_two_screen';

  static const String openCameraOneScreen = '/open_camera_one_screen';

  static const String vrScreen = '/vr_screen';

  static const String camPermissionFiveScreen = '/cam_permission_five_screen';

  static const String camPermissionSixScreen = '/cam_permission_six_screen';

  static const String camPermissionSevenScreen = '/cam_permission_seven_screen';

  static const String aboutUsScreen = '/about_us_screen';

  static const String privacyPolicyScreen = '/privacy_policy_screen';

  static const String termsConditionsScreen = '/terms_conditions_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String bottomNavigationBar = '/bottom_navigation_bar';

  static const String popupScreen = '/popup_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage<dynamic>> get generatedRoutes => [
        GetPage(
            name: favorites2CustomTitleScreen,
            page: () => Favorites2CustomTitleScreen()),
        GetPage(
            name: favorites3CustomTitleScreen,
            page: () => const Favorites3CustomTitleScreen()),
        GetPage(name: editProfileScreen, page: () => EditProfileScreen()),
        GetPage(name: changePasswordScreen, page: () => ChangePasswordScreen()),
        GetPage(
            name: changePasswordOneScreen,
            page: () => const ChangePasswordOneScreen()),
        GetPage(name: signInScreen, page: () => const SignInScreen()),
        GetPage(name: signInOneScreen, page: () => const SignInOneScreen()),
        GetPage(name: signInTwoScreen, page: () => const SignInTwoScreen()),
        GetPage(name: signUpScreen, page: () => SignUpScreen()),
        GetPage(
            name: emailVerificationScreen,
            page: () => EmailVerificationScreen()),
        GetPage(name: signInThreeScreen, page: () => const SignInThreeScreen()),
        GetPage(name: signInFourScreen, page: () => const SignInFourScreen()),
        GetPage(
            name: accountSetupScreen, page: () => const AccountSetupScreen()),
        GetPage(name: signInFiveScreen, page: () => SignInFiveScreen()),
        GetPage(name: signInSixScreen, page: () => const SignInSixScreen()),
        GetPage(name: signInSevenScreen, page: () => const SignInSevenScreen()),
        GetPage(
            name: accountSetupFourScreen, page: () => AccountSetupFourScreen()),
        GetPage(name: howItWorksScreen, page: () => HowItWorksScreen()),
        GetPage(name: openCameraScreen, page: () => const OpenCameraScreen()),
        GetPage(
            name: capturedPhotoScreen, page: () => const CapturedPhotoScreen()),
        GetPage(
            name: camPermissionOneScreen,
            page: () => const CamPermissionOneScreen()),
        GetPage(
            name: camPermissionTwoScreen, page: () => CamPermissionTwoScreen()),
        GetPage(
            name: camPermissionThreeScreen,
            page: () => const CamPermissionThreeScreen()),
        GetPage(
            name: camPermissionFourScreen,
            page: () => const CamPermissionFourScreen()),
        GetPage(name: searchScreen, page: () => SearchScreen()),
        GetPage(
            name: favoritesOneScreen, page: () => const FavoritesOneScreen()),
        GetPage(name: profileScreen, page: () => ProfileScreen()),
        // GetPage(
        //     name: profileInitialPage,
        //     page: () => ProfileScreen()), // Adjust if needed
        GetPage(name: settingsScreen, page: () => const SettingsScreen()),
        GetPage(name: changeEmailScreen, page: () => ChangeEmailScreen()),
        GetPage(name: changeEmailOtpScreen, page: () => ChangeEmailOtpScreen()),
        GetPage(name: signInEightScreen, page: () => const SignInEightScreen()),
        GetPage(name: signInNineScreen, page: () => const SignInNineScreen()),
        GetPage(name: editProfileOneScreen, page: () => EditProfileOneScreen()),
        GetPage(
            name: onBoardingOneScreen, page: () => const OnBoardingOneScreen()),
        GetPage(
            name: onBoardingTwoScreen, page: () => const OnBoardingTwoScreen()),
        GetPage(
            name: onBoardingThreeScreen,
            page: () => const OnBoardingThreeScreen()),
        GetPage(name: loginScreen, page: () => LoginScreen()),
        GetPage(name: forgotPasswordScreen, page: () => ForgotPasswordScreen()),
        GetPage(
            name: forgotPassword1aScreen, page: () => ForgotPassword1aScreen()),
        GetPage(
            name: resetPasswordOtpScreen, page: () => ResetPasswordOtpScreen()),
        GetPage(
            name: resetNewPasswordScreen, page: () => ResetNewPasswordScreen()),
        GetPage(name: signInTenScreen, page: () => const SignInTenScreen()),
        GetPage(
            name: forgotPassword1bScreen, page: () => ForgotPassword1bScreen()),
        GetPage(name: resetPhoneOtpScreen, page: () => ResetPhoneOtpScreen()),
        GetPage(name: helpScreen, page: () => HelpScreen()),
        GetPage(
            name: changePhoneNumberScreen,
            page: () => ChangePhoneNumberScreen()),
        GetPage(
            name: changeNumberOtpScreen, page: () => ChangeNumberOtpScreen()),
        GetPage(
            name: signInElevenScreen, page: () => const SignInElevenScreen()),
        GetPage(
            name: signInTwelveScreen, page: () => const SignInTwelveScreen()),
        GetPage(name: searchOneScreen, page: () => SearchOneScreen()),
        GetPage(name: searchTwoScreen, page: () => const SearchTwoScreen()),
        GetPage(
            name: openCameraOneScreen, page: () => const OpenCameraOneScreen()),
        GetPage(name: vrScreen, page: () => const VrScreen()),
        GetPage(
            name: camPermissionFiveScreen,
            page: () => const CamPermissionFiveScreen()),
        GetPage(
            name: camPermissionSixScreen,
            page: () => const CamPermissionSixScreen()),
        GetPage(
            name: camPermissionSevenScreen,
            page: () => const CamPermissionSevenScreen()),
        GetPage(name: aboutUsScreen, page: () => const AboutUsScreen()),
        GetPage(
            name: privacyPolicyScreen, page: () => const PrivacyPolicyScreen()),
        GetPage(
            name: termsConditionsScreen,
            page: () => const TermsConditionsScreen()),
        GetPage(
            name: appNavigationScreen, page: () => const AppNavigationScreen()),
        GetPage(name: initialRoute, page: () => OnboardingScreen()),
        GetPage(
            name: bottomNavigationBar, page: () => BottomNavigationBarScreen()),
        GetPage(name: popupScreen, page: () => PopupShowingWornOutfitDialog()),
      ];
}

//   static Map<String, WidgetBuilder> routes = {
//     favorites2CustomTitleScreen: (context) => Favorites2CustomTitleScreen(),
//     favorites3CustomTitleScreen: (context) => Favorites3CustomTitleScreen(),
//     editProfileScreen: (context) => EditProfileScreen(),
//     changePasswordScreen: (context) => ChangePasswordScreen(),
//     changePasswordOneScreen: (context) => ChangePasswordOneScreen(),
//     signInScreen: (context) => SignInScreen(),
//     signInOneScreen: (context) => SignInOneScreen(),
//     signInTwoScreen: (context) => SignInTwoScreen(),
//     signUpScreen: (context) => SignUpScreen(),
//     emailVerificationScreen: (context) => EmailVerificationScreen(),
//     signInThreeScreen: (context) => SignInThreeScreen(),
//     signInFourScreen: (context) => SignInFourScreen(),
//     accountSetupScreen: (context) => AccountSetupScreen(),
//     signInFiveScreen: (context) => SignInFiveScreen(),
//     signInSixScreen: (context) => SignInSixScreen(),
//     signInSevenScreen: (context) => SignInSevenScreen(),
//     accountSetupFourScreen: (context) => AccountSetupFourScreen(),
//     howItWorksScreen: (context) => HowItWorksScreen(),
//     openCameraScreen: (context) => OpenCameraScreen(),
//     capturedPhotoScreen: (context) => CapturedPhotoScreen(),
//     camPermissionOneScreen: (context) => CamPermissionOneScreen(),
//     camPermissionTwoScreen: (context) => CamPermissionTwoScreen(),
//     camPermissionThreeScreen: (context) => CamPermissionThreeScreen(),
//     camPermissionFourScreen: (context) => CamPermissionFourScreen(),
//     searchScreen: (context) => SearchScreen(),
//     favoritesOneScreen: (context) => FavoritesOneScreen(),
//     profileScreen: (context) => ProfileScreen(),
//     settingsScreen: (context) => SettingsScreen(),
//     changeEmailScreen: (context) => ChangeEmailScreen(),
//     changeEmailOtpScreen: (context) => ChangeEmailOtpScreen(),
//     signInEightScreen: (context) => SignInEightScreen(),
//     signInNineScreen: (context) => SignInNineScreen(),
//     editProfileOneScreen: (context) => EditProfileOneScreen(),
//     onBoardingOneScreen: (context) => OnBoardingOneScreen(),
//     onBoardingTwoScreen: (context) => OnBoardingTwoScreen(),
//     onBoardingThreeScreen: (context) => OnBoardingThreeScreen(),
//     loginScreen: (context) => LoginScreen(),
//     forgotPasswordScreen: (context) => ForgotPasswordScreen(),
//     forgotPassword1aScreen: (context) => ForgotPassword1aScreen(),
//     resetEmailOtpScreen: (context) => ResetEmailOtpScreen(),
//     resetNewPasswordScreen: (context) => ResetNewPasswordScreen(),
//     signInTenScreen: (context) => SignInTenScreen(),
//     forgotPassword1bScreen: (context) => ForgotPassword1bScreen(),
//     resetPhoneOtpScreen: (context) => ResetPhoneOtpScreen(),
//     helpScreen: (context) => HelpScreen(),
//     changePhoneNumberScreen: (context) => ChangePhoneNumberScreen(),
//     changeNumberOtpScreen: (context) => ChangeNumberOtpScreen(),
//     signInElevenScreen: (context) => SignInElevenScreen(),
//     signInTwelveScreen: (context) => SignInTwelveScreen(),
//     searchOneScreen: (context) => SearchOneScreen(),
//     searchTwoScreen: (context) => SearchTwoScreen(),
//     openCameraOneScreen: (context) => OpenCameraOneScreen(),
//     vrScreen: (context) => VrScreen(),
//     camPermissionFiveScreen: (context) => CamPermissionFiveScreen(),
//     camPermissionSixScreen: (context) => CamPermissionSixScreen(),
//     camPermissionSevenScreen: (context) => CamPermissionSevenScreen(),
//     aboutUsScreen: (context) => AboutUsScreen(),
//     privacyPolicyScreen: (context) => PrivacyPolicyScreen(),
//     termsConditionsScreen: (context) => TermsConditionsScreen(),
//     appNavigationScreen: (context) => AppNavigationScreen(),
//     initialRoute: (context) => OnBoardingOneScreen()
//   };
// }
