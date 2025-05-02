import 'package:ai_measurement/core/network/dio_api_handler/api_worker.dart';
import 'package:ai_measurement/presentation/search_two_screen/product_details_model/product_details_response.dart';
import 'package:get/get.dart';
import 'package:toastification/toastification.dart';

import '../../../widgets/common_toastification.dart';

class ProductDetailsController extends GetxController {
  late ApiWorker apiWorker = Get.put(ApiWorker());

  Rx<ProductDetailsResponse> productDetails =
      Rx<ProductDetailsResponse>(ProductDetailsResponse());

  Future<void> productDetailsApi(context, productId) async {
    var response = await apiWorker.getProductById(context, productId);

    if (response != null) {
      productDetails.value = response;
      print('productDetails: $response');
      update();
    } else {
      print('Error: API response is invalid or null');
      showToast(
        context,
        'error',
        'Something went wrong.',
        type: ToastificationType.error,
        dragToClose: false,
      );
    }
  }
}
