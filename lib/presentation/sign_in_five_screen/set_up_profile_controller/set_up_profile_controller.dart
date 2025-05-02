import 'dart:io';

import 'package:ai_measurement/presentation/sign_in_five_screen/set_up_profile_model/set_up_profile_request.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:toastification/toastification.dart';

import '../../../core/network/dio_api_handler/api_worker.dart';
import '../../../core/network/dio_api_handler/dio_client.dart';
import '../../../core/network/session/session_helper.dart';
import '../../../routes/app_routes.dart';
import '../../../widgets/common_toastification.dart';

class SetUpProfileController extends GetxController {
  late DioClient dio;
  late ApiWorker apiWorker = Get.put(ApiWorker());

  TextEditingController nameController = TextEditingController();

  TextEditingController heightController = TextEditingController();

  TextEditingController genderController = TextEditingController();

  TextEditingController weightController = TextEditingController();

  TextEditingController bodyTypeController = TextEditingController();

  TextEditingController ageController = TextEditingController();

  final ImagePicker _picker = ImagePicker();
  var selectedImagePath = "".obs;

  Future<void> pickFromCamera() async {
    try {
      final XFile? image = await _picker.pickImage(source: ImageSource.camera);
      if (image != null) {
        selectedImagePath.value = image.path;
      }
    } catch (e) {
      Get.snackbar('Error', 'Failed to pick image: $e');
    }
  }

  Future<void> _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      selectedImagePath.value = pickedFile.path;
    }
  }

  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () => Get.back(),
                    icon: const Icon(Icons.close),
                  ),
                ],
              ),
              const Text(
                "Photo",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildOption(
                    icon: Icons.camera_alt_outlined,
                    label: 'Camera',
                    onTap: () {
                      pickFromCamera();
                      Get.back();
                    },
                  ),
                  _buildOption(
                    icon: Icons.photo_outlined,
                    label: 'Gallery',
                    onTap: () {
                      _pickImage();
                      Get.back();
                    },
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }

  static Widget _buildOption({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
            ),
            child: Icon(icon, color: Colors.white),
          ),
        ),
        const SizedBox(height: 10),
        Text(label, style: const TextStyle(fontSize: 14))
      ],
    );
  }

  Future<void> setUpProfileApi(context) async {
    var userId = await SessionHelper().getUserId();
    print('userId is $userId');
    var request = SetUpProfileRequest(
        userId: userId,
        name: nameController.text,
        height: heightController.text,
        gender: genderController.text,
        weight: weightController.text,
        bodyType: bodyTypeController.text,
        age: ageController.text,
        profilePicture: File(selectedImagePath.value));
    print('SignUp request is $request');
    await apiWorker.setUpProfileApi(request, context).then((value) {
      if (value != null) {
        if (value.userId != null) {
          Get.offNamed(AppRoutes.signInSixScreen);
        } else {
          showToast(
            context,
            'Error',
            'Enter valid details',
            type: ToastificationType.error,
            dragToClose: false,
          );
        }
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
