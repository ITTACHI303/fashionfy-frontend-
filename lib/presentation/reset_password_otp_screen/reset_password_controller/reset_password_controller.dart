import 'package:ai_measurement/presentation/reset_password_otp_screen/reset_password_model/reset_password_request.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:toastification/toastification.dart';

import '../../../core/network/dio_api_handler/api_worker.dart';
import '../../../core/network/dio_api_handler/dio_client.dart';
import '../../../core/utils/keys.dart';
import '../../../routes/app_routes.dart';
import '../../../widgets/common_toastification.dart';

class ResetPasswordController extends GetxController {
  late DioClient dio;
  late ApiWorker apiWorker = Get.put(ApiWorker());
  TextEditingController otpController = TextEditingController();
  var navigatedFrom = Rx<String?>(null);

  void initialize(Map<String, dynamic>? args) {
    navigatedFrom.value = args?[Keys.keyNavigatedFrom] ?? '';
  }

  Future<void> resetPasswordApi(context, input) async {
    var request = ResetPasswordRequest(
      emailOrPhone: input,
      resetToken: otpController.text,
    );
    print('reset password verification request is $request');
    await apiWorker.resetPasswordApi(request, context).then((value) {
      if (value != null) {
        if (value.userId != null) {
          Get.offNamed(AppRoutes.resetNewPasswordScreen,
              arguments: value.userId);
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
