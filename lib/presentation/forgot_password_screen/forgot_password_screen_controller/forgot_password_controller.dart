import 'package:ai_measurement/presentation/forgot_password_screen/forgot_password_model/forgot_password_request.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../core/network/dio_api_handler/api_worker.dart';
import '../../../core/network/dio_api_handler/dio_client.dart';
import '../../../routes/app_routes.dart';
import '../../../widgets/common_toastification.dart';

class ForgotPasswordController extends GetxController {
  late DioClient dio;
  late ApiWorker apiWorker = Get.put(ApiWorker());
  TextEditingController controller = TextEditingController();

  Future<void> forgotPasswordApi(context, verificationMethod) async {
    var request = ForgotPasswordRequest(
      emailOrPhone: controller.text,
      verificationMethod: verificationMethod,
    );
    print('ForgotPassword request is $request');
    await apiWorker.forgotPasswordApi(request, context).then((value) {
      if (value != null) {
        if (verificationMethod == 'email') {
          Get.toNamed(AppRoutes.forgotPassword1aScreen,
              arguments: controller.text);
        } else if (verificationMethod == 'sms') {
          Get.toNamed(AppRoutes.forgotPassword1bScreen,
              arguments: controller.text);
        }
      } else {
        showToast(
          context,
          'error',
          'Email or phone is incorrect',
          dragToClose: false,
        );
      }
    });
  }
}
