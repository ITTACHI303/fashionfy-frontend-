import 'package:ai_measurement/presentation/email_verification_screen/email_verification_model/email_verification_request.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:toastification/toastification.dart';

import '../../../core/network/dio_api_handler/api_worker.dart';
import '../../../core/network/dio_api_handler/dio_client.dart';
import '../../../core/network/session/session_helper.dart';
import '../../../routes/app_routes.dart';
import '../../../widgets/common_toastification.dart';

class EmailVerificationController extends GetxController {
  late DioClient dio;
  late ApiWorker apiWorker = Get.put(ApiWorker());
  TextEditingController otpController = TextEditingController();

  Future<void> emailVerificationApi(context, email) async {
    var request = EmailVerificationRequest(
      emailOrPhone: email,
      verificationCode: otpController.text,
    );
    print('Email verification request is $request');
    await apiWorker.emailVerificationApi(request, context).then((value) {
      if (value != null) {
        if (value.token != null) {
          SessionHelper().setToken(value.token!);
          Get.offNamed(AppRoutes.signInThreeScreen);
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
}
