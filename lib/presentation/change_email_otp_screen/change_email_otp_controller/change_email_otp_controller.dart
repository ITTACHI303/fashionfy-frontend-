import 'package:ai_measurement/core/network/dio_api_handler/api_worker.dart';
import 'package:ai_measurement/presentation/change_email_otp_screen/change_email_otp_model/change_email_otp_request.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../core/network/session/session_helper.dart';
import '../../../routes/app_routes.dart';
import '../../../widgets/common_toastification.dart';

class ChangeEmailOtpController extends GetxController {
  TextEditingController otpController = TextEditingController();

  late ApiWorker apiWorker = Get.put(ApiWorker());

  Future<void> verifyEmailApi(context) async {
    var userId = await SessionHelper().getUserId();
    print('userId is $userId');
    var request = ChangeEmailOtpRequest(
      userId: userId,
      verificationCode: otpController.text,
    );
    print('verify email request is $request');

    await apiWorker.verifyEmail(request, context).then((value) {
      if (value.message == "Email updated successfully") {
        Get.offNamed(
            AppRoutes.signInEightScreen); // or wherever you want to navigate
      } else {
        showToast(
          context,
          'error',
          value.message ?? "Something went wrong",
          dragToClose: false,
        );
      }
    });
  }
}
