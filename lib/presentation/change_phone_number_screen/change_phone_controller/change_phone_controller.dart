import 'package:ai_measurement/presentation/change_phone_number_screen/change_phone_model/change_phone_request.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../core/network/dio_api_handler/api_worker.dart';
import '../../../core/network/session/session_helper.dart';
import '../../../routes/app_routes.dart';
import '../../../widgets/common_toastification.dart';

class ChangePhoneController extends GetxController {
  TextEditingController newPhoneController = TextEditingController();
  TextEditingController confirmPhoneController = TextEditingController();

  late ApiWorker apiWorker = Get.put(ApiWorker());

  Future<void> changePhoneApi(context) async {
    var user = await SessionHelper().getLoginResponse();
    var phone = user?.user?.phone;
    var userId = await SessionHelper().getUserId();
    print('userId is $userId');
    var request = ChangePhoneRequest(
      userId: userId,
      currentPhone: phone,
      newPhone: newPhoneController.value.text,
      confirmPhone: confirmPhoneController.value.text,
    );
    print('change email request is $request');

    await apiWorker.changePhone(request, context).then((value) {
      if (value.message == "Verification code sent to new phone number") {
        Get.offNamed(AppRoutes
            .changeNumberOtpScreen); // or wherever you want to navigate
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
