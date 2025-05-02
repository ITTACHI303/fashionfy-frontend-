import 'package:ai_measurement/core/app_export.dart';
import 'package:ai_measurement/presentation/sign_up_screen/sign_up_model/sign_up_request.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:toastification/toastification.dart';

import '../../../core/network/dio_api_handler/api_worker.dart';
import '../../../core/network/dio_api_handler/dio_client.dart';
import '../../../core/network/session/session_helper.dart';
import '../../../widgets/common_toastification.dart';
import '../sign_up_code_sent_model/sign_up_code_sent_request.dart';

class SignUpController extends GetxController {
  late DioClient dio;
  late ApiWorker apiWorker = Get.put(ApiWorker());

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  Future<void> signUpApi(context) async {
    var request = SignUpRequest(
      email: emailController.text,
      phone: phoneController.text,
      password: passwordController.text,
      confirmPassword: confirmPasswordController.text,
    );
    print('SignUp request is $request');
    await apiWorker.signUpApi(request, context).then((value) {
      if (value != null) {
        if (value.success == true) {
          SessionHelper().setSignUpResponse(value);
          SessionHelper().setUserId(value.user!.id!.toInt());
          signUpCodeSentApi(context);
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
          'Invalid Credentials',
          dragToClose: false,
        );
      }
    });
  }

  Future<void> signUpCodeSentApi(context) async {
    var userId = await SessionHelper().getUserId();
    var request = SignUpCodeSentRequest(
      userId: userId,
      verificationMethod: 'email',
    );
    print('SignUp request is $request');
    await apiWorker.signUpCodeSentApi(request, context).then((value) {
      if (value != null) {
        if (value.success == true) {
          Get.toNamed(AppRoutes.emailVerificationScreen,
              arguments: emailController.text);
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
          'Invalid Credentials',
          dragToClose: false,
        );
      }
    });
  }
}
