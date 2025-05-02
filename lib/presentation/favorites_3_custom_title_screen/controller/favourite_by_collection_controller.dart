import 'package:ai_measurement/presentation/favorites_3_custom_title_screen/get_favourites_by_collection_model/get_favourites_by_collection_response.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../core/network/dio_api_handler/api_worker.dart';

class FavouriteByCollectionController extends GetxController {
  late ApiWorker apiWorker = Get.put(ApiWorker());

  RxList<GetFavouritesByCollectionResponse> favouritesByCollection =
      <GetFavouritesByCollectionResponse>[].obs;

  void loadFavouritesByCollection(
      BuildContext context, int collectionId) async {
    try {
      print("Loading favourites...");
      var response =
          await apiWorker.getFavouritesByCollection(context, collectionId);
      if (response.isNotEmpty) {
        favouritesByCollection.assignAll(response);
        print("favourites loaded: ${favouritesByCollection.length}");
      } else {
        print("No favourites found.");
      }
    } catch (e) {
      print('Error loading favourites: $e');
    }
  }
}
