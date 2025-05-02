import 'package:ai_measurement/presentation/favorites_2_custom_title_screen/model/create_collection_request.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../core/network/dio_api_handler/api_worker.dart';
import '../../../core/network/session/session_helper.dart';
import '../../../widgets/common_toastification.dart';

class CreateCollectionController extends GetxController {
  final collectionController = TextEditingController();

  late ApiWorker apiWorker = Get.put(ApiWorker());

  Future<void> createCollectionApi(context) async {
    var userId = await SessionHelper().getUserId();
    print('userId is $userId');
    var request = CreateCollectionRequest(
      userId: userId,
      name: collectionController.value.text,
    );
    print('CreateCollectionRequest is $request');

    await apiWorker.createCollection(request, context).then((value) {
      if (value != null) {
        Get.snackbar("Success",
            "Collection created successfully..."); // or wherever you want to navigate
      } else {
        showToast(
          context,
          'error',
          "Something went wrong",
          dragToClose: false,
        );
      }
    });
  }
}
