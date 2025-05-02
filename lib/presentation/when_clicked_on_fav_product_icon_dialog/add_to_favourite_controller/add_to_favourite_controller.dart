import 'package:ai_measurement/core/network/dio_api_handler/api_worker.dart';
import 'package:ai_measurement/presentation/when_clicked_on_fav_product_icon_dialog/add_to_favourite_model/add_to_favourite_request.dart';
import 'package:ai_measurement/presentation/when_clicked_on_fav_product_icon_dialog/get_collection_model/get_collection_response.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../core/network/session/session_helper.dart';
import '../../../widgets/common_toastification.dart';

class AddToFavouriteController extends GetxController {
  late ApiWorker apiWorker = Get.put(ApiWorker());

  Future<void> addFavouriteApi(context, productId, collectionId) async {
    var userId = await SessionHelper().getUserId();
    print('userId is $userId');
    var request = AddToFavouriteRequest(
      userId: userId.toString(),
      productId: productId,
      collectionId: collectionId,
    );
    print('AddToFavouriteRequest is $request');

    await apiWorker.addToFavourite(request, context).then((value) {
      if (value != null) {
        showToast(context, "Success", "Item added to favourites...");
        Get.back(); // or wherever you want to navigate
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

  RxList<GetCollectionResponse> collections = <GetCollectionResponse>[].obs;

  void loadCollections(BuildContext context) async {
    try {
      print("Loading favourites...");
      var response = await apiWorker.getCollection(context);
      if (response.isNotEmpty) {
        collections.assignAll(response);
        print("collections loaded: ${collections.length}");
      } else {
        print("No collections found.");
      }
    } catch (e) {
      print('Error loading collections: $e');
    }
  }
}
