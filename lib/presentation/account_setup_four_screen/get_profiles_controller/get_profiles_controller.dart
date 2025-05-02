import 'package:ai_measurement/core/network/dio_api_handler/api_worker.dart';
import 'package:ai_measurement/presentation/account_setup_four_screen/delete_profile_model/delete_profile_response.dart';
import 'package:ai_measurement/presentation/account_setup_four_screen/get_profiles_model/get_profiles_response.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:toastification/toastification.dart';

import '../../../widgets/common_toastification.dart';

class GetProfilesController extends GetxController {
  late ApiWorker apiWorker = Get.put(ApiWorker());

  RxList<GetProfilesResponse> getProfiles = <GetProfilesResponse>[].obs;

  void loadProfiles(BuildContext context) async {
    try {
      print("Loading profiles...");
      var response = await apiWorker.getProfileApi(context);
      if (response.isNotEmpty) {
        getProfiles.assignAll(response);
        print("Profiles loaded: ${getProfiles.length}");
      } else {
        print("No profiles found.");
      }
    } catch (e) {
      print('Error loading profiles: $e');
    }
  }

  Future<DeleteProfileResponse?> deleteProfileApi(context, profileId) async {
    try {
      var response = await apiWorker.deleteProfileApi(context, profileId);

      if (response.message == "Profile deleted successfully") {
        loadProfiles(context);
        showToast(context, 'Deleted Successfully !', response.message ?? '',
            type: ToastificationType.success);
      }
    } catch (e) {
      print('Error fetching payment method: $e');
      return null;
    }
    return null;
  }
}
