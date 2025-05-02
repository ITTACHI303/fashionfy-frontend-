import 'package:ai_measurement/presentation/reset_new_password_screen/reset_new_password_model/reset_new_password_request.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../core/network/dio_api_handler/api_worker.dart';
import '../../../core/network/dio_api_handler/dio_client.dart';
import '../../../routes/app_routes.dart';
import '../../../widgets/common_toastification.dart';

class ResetNewPasswordController extends GetxController {
  late DioClient dio;
  late ApiWorker apiWorker = Get.put(ApiWorker());
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  Future<void> resetNewPasswordApi(context, userId) async {
    var request = ResetNewPasswordRequest(
      userId: userId,
      newPassword: passwordController.text,
      confirmPassword: confirmPasswordController.text,
    );
    print('Reset new password request is $request');
    await apiWorker.resetNewPasswordApi(request, context).then((value) {
      if (value != null) {
        Get.offNamed(AppRoutes.signInTenScreen);
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
