import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../core/network/dio_api_handler/api_worker.dart';
import '../../../core/network/session/session_helper.dart';
import '../../../routes/app_routes.dart';
import '../../../widgets/common_toastification.dart';
import '../change_email_model/change_email_request.dart';

class ChangeEmailController extends GetxController {
  TextEditingController emailOneController = TextEditingController();
  TextEditingController confirmEmailOneController = TextEditingController();

  late ApiWorker apiWorker = Get.put(ApiWorker());

  Future<void> changeEmailApi(context) async {
    var user = await SessionHelper().getLoginResponse();
    var email = user?.user?.email;
    var userId = await SessionHelper().getUserId();
    print('userId is $userId');
    var request = ChangeEmailRequest(
      userId: userId,
      currentEmail: email,
      newEmail: emailOneController.value.text,
      confirmEmail: confirmEmailOneController.value.text,
    );
    print('change email request is $request');

    await apiWorker.changeEmail(request, context).then((value) {
      if (value.message == "Verification code sent to new email") {
        Get.offNamed(
            AppRoutes.changeEmailOtpScreen); // or wherever you want to navigate
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
