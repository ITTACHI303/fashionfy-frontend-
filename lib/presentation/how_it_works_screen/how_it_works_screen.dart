import 'package:ai_measurement/core/utils/string_resources.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';

class HowItWorksScreen extends StatelessWidget {
  HowItWorksScreen({Key? key})
      : super(
          key: key,
        );

  var selectedImages = <XFile>[].obs;
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.whiteA700,
      appBar: _buildAppbar(context),
      body: SafeArea(
        top: false,
        child: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(
                left: 28.h,
                top: 12.h,
                right: 28.h,
              ),
              child: Column(
                children: [
                  Text(
                    StringResources.strYouAreAllSet.tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(height: 32.h),
                  buildTextSection(
                    number: StringResources.str1.tr,
                    title: StringResources.strPositionCorrectly.tr,
                    bulletPoints: [
                      StringResources.strStandStraight.tr,
                      StringResources.strEnsureFacingCamera.tr,
                    ],
                  ),
                  SizedBox(height: 22.h),
                  CustomImageView(
                    imagePath: ImageConstant.imgFreepikCandid,
                    height: 256.h,
                    width: 100.h,
                  ),
                  SizedBox(height: 66.h),
                  buildTextSection(
                    number: StringResources.str2.tr,
                    title: StringResources.strKeepCamera.tr,
                    bulletPoints: [
                      StringResources.strHoldYourPhone.tr,
                    ],
                  ),
                  // SizedBox(
                  //   width: 310.h,
                  //   child: Text(
                  //     "Keep the Camera at Eye Level\nHold your phone at eye level to ensure the AI can accurately detect your body shape and measurements.",
                  //     maxLines: 4,
                  //     overflow: TextOverflow.ellipsis,
                  //     style: theme.textTheme.bodyMedium!.copyWith(
                  //       height: 1.54,
                  //     ),
                  //   ),
                  // ),
                  SizedBox(height: 36.h),
                  CustomImageView(
                    imagePath: ImageConstant.imgFreepikCandid256x84,
                    height: 256.h,
                    width: 86.h,
                  ),
                  SizedBox(height: 44.h),
                  buildTextSection(
                    number: StringResources.str3.tr,
                    title: StringResources.strCaptureSideView.tr,
                    bulletPoints: [
                      StringResources.strAccurateMeasurements.tr,
                      StringResources.strEnsureCameraAtWaistHeight.tr
                    ],
                  ),
                  // SizedBox(
                  //   width: 316.h,
                  //   child: Text(
                  //     "Capture from the Side View\nFor more accurate measurements, take a side view photo in addition to the front-facing one.\nEnsure the camera is at your waist height, and your body is fully visible from the side.",
                  //     maxLines: 7,
                  //     overflow: TextOverflow.ellipsis,
                  //     style: theme.textTheme.bodyMedium!.copyWith(
                  //       height: 1.54,
                  //     ),
                  //   ),
                  // ),
                  SizedBox(height: 50.h),
                  CustomElevatedButton(
                    text: StringResources.strContinue.tr,
                    onPressed: () {
                      onTapContinue();
                    },
                  ),
                  SizedBox(height: 62.h)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      height: 48.h,
      leadingWidth: 52.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgImage35,
        margin: EdgeInsets.only(left: 28.h),
        onTap: () {
          onTapImagethirtyfive();
        },
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: StringResources.strHowItWorks.tr,
      ),
    );
  }

  Widget buildTextSection({
    required String number,
    required String title,
    required List<String> bulletPoints,
  }) {
    return SizedBox(
      width: 310.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$number. $title",
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodyLarge!.copyWith(
              height: 1.54,
            ),
          ),
          const SizedBox(height: 8),
          ...bulletPoints.map((point) => buildBulletPoint(point)).toList(),
        ],
      ),
    );
  }

  Widget buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "•  ",
            style: theme.textTheme.bodyMedium,
          ),
          Expanded(
            child: Text(
              text,
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.justify,
              style: theme.textTheme.bodyMedium!.copyWith(height: 1.54),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> pickFromCamera() async {
    try {
      final XFile? image = await _picker.pickImage(source: ImageSource.camera);
      if (image != null) {
        selectedImages.add(image);
        Get.offNamed(AppRoutes.capturedPhotoScreen);
      }
    } catch (e) {
      Get.snackbar('Error', 'Failed to pick image: $e');
    }
  }

  /// Navigates to the accountSetupFourScreen when the action is triggered.
  onTapImagethirtyfive() {
    Get.back();
  }

  /// Navigates to the openCameraScreen when the action is triggered.
  onTapContinue() {
    pickFromCamera();
  }
}
