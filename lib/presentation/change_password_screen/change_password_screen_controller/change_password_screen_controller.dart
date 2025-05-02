import 'package:ai_measurement/core/network/dio_api_handler/api_worker.dart';
import 'package:ai_measurement/presentation/change_password_screen/change_password_model/change_password_request.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../core/network/session/session_helper.dart';
import '../../../routes/app_routes.dart';
import '../../../widgets/common_toastification.dart';

class ChangePasswordScreenController extends GetxController {
  final oldPasswordController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  late ApiWorker apiWorker = Get.put(ApiWorker());

  Future<void> changePasswordApi(context) async {
    var userId = await SessionHelper().getUserId();
    print('userId is $userId');
    var request = ChangePasswordRequest(
        userId: userId,
        currentPassword: oldPasswordController.value.text,
        newPassword: passwordController.value.text,
        confirmPassword: confirmPasswordController.value.text);
    print('change password request is $request');
    await apiWorker.changePassword(request, context).then((value) {
      if (value.message == "Password updated successfully") {
        Get.offNamed(AppRoutes.signInScreen);
      } else {
        showToast(
          context,
          'error',
          value.message!,
          dragToClose: false,
        );
      }
    });
  }
}
