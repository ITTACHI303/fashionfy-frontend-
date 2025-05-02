import 'package:ai_measurement/presentation/favorites_one_screen/favourites_model/favourites_response.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../core/network/dio_api_handler/api_worker.dart';

class FavouritesController extends GetxController {
  late ApiWorker apiWorker = Get.put(ApiWorker());

  RxList<FavouritesResponse> favourites = <FavouritesResponse>[].obs;

  void loadFavourites(BuildContext context) async {
    try {
      print("Loading favourites...");
      var response = await apiWorker.getFavourites(context);
      if (response.isNotEmpty) {
        favourites.assignAll(response);
        print("favourites loaded: ${favourites.length}");
      } else {
        print("No favourites found.");
      }
    } catch (e) {
      print('Error loading favourites: $e');
    }
  }
}
