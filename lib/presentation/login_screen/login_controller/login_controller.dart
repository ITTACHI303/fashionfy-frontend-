import 'package:ai_measurement/core/network/dio_api_handler/api_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toastification/toastification.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/network/dio_api_handler/api_worker.dart';
import '../../../core/network/dio_api_handler/dio_client.dart';
import '../../../core/network/session/session_helper.dart';
import '../../../routes/app_routes.dart';
import '../../../widgets/common_toastification.dart';
import '../login_model/login_request.dart';

class LoginController extends GetxController {
  late DioClient dio;
  late ApiWorker apiWorker = Get.put(ApiWorker());
  TextEditingController phoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  // Future<void> loginWithPasswordApi(context) async {
  //   var request;
  //   request = LoginRequest(
  //       emailOrPhone: phoneController.text, password: passwordController.text);
  //   print('request::::::: $request');
  //   await apiWorker.loginPasswordApi(request, context);
  //   try {
  //     LoginResponse? response =
  //         await apiWorker.loginPasswordApi(request, context);
  //
  //     if (response != null && response.token != null) {
  //       // Navigate to Home Screen
  //
  //       Get.offAllNamed(AppRoutes.accountSetupFourScreen);
  //     } else {
  //       print('Login failed: ${response?.message}');
  //       SnackBar(
  //         content: Text("Login Failed"),
  //       );
  //       // Show error message to user if needed
  //     }
  //   } catch (e) {
  //     print('Error during login: $e');
  //     // Show error message to user
  //   }
  // }

  Future<void> loginApi(context) async {
    var request = LoginRequest(
        emailOrPhone: phoneController.text, password: passwordController.text);
    print('Login request is $request');
    await apiWorker.loginApi(request, context).then((value) {
      if (value != null) {
        if (value.user != true) {
          SessionHelper().setLoginResponse(value);
          SessionHelper().setToken(value.token!);
          SessionHelper().setUserId(value.user!.id!.toInt());
          Get.offAllNamed(AppRoutes.accountSetupFourScreen,
              arguments: value.user?.id);
        } else {
          showToast(
            context,
            'Error',
            value.message!,
            type: ToastificationType.error,
            dragToClose: false,
          );
        }
      } else {
        showToast(
          context,
          'error',
          'Email or password is incorrect',
          dragToClose: false,
        );
      }
    });
  }

  Future<void> launchGoogleAuth() async {
    final Uri url =
        Uri.parse('${ApiConstants.baseUrl}${ApiConstants.authGoogle}');

    if (!await launchUrl(
      url,
      mode: LaunchMode.inAppBrowserView,
    )) {
      throw 'Could not launch $url';
    }
  }
}
