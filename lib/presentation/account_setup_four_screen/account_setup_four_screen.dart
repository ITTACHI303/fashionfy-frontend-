import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/app_export.dart';
import '../../core/network/session/session_helper.dart';
import '../../core/utils/string_resources.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'get_profiles_controller/get_profiles_controller.dart';
import 'widgets/listoliver_one_item_widget.dart';

class AccountSetupFourScreen extends StatefulWidget {
  AccountSetupFourScreen({Key? key}) : super(key: key);

  @override
  State<AccountSetupFourScreen> createState() => _AccountSetupFourScreenState();
}

class _AccountSetupFourScreenState extends State<AccountSetupFourScreen> {
  final controller = Get.put(GetProfilesController());

  // Variable to track the index of the selected profile
  int? selectedProfileIndex;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      controller.loadProfiles(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.whiteA700,
      appBar: _buildAppbar(context),
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(
                left: 26.h, top: 40.h, right: 26.h, bottom: 50.h),
            child: Column(
              children: [
                _buildListoliverone(context),
                SizedBox(height: 14.h),
                _buildAddProfile(context),
                SizedBox(height: 14.h),
                if (selectedProfileIndex != null)
                  CustomElevatedButton(
                    text: StringResources.strContinue.tr,
                    onPressed: () {
                      onTapContinue();
                    },
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAddProfile(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: GestureDetector(
        onTap: () {
          onTapAddProfile();
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 6.h),
          decoration: AppDecoration.fillOnPrimary.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder4,
          ),
          child: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage,
                height: 38.h,
                width: 38.h,
                radius: BorderRadius.circular(18.h),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Text(
                  StringResources.strAddProfile.tr,
                  style: theme.textTheme.titleSmall,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      height: 78.h,
      leadingWidth: 52.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgImage35,
        margin: EdgeInsets.only(left: 28.h, top: 5.h, bottom: 49.h),
        onTap: onTapImagethirtyfive,
      ),
      centerTitle: true,
      title: Column(
        children: [
          AppbarTitle(
              text: StringResources.strProfileOptions.tr,
              margin: EdgeInsets.only(left: 9.h, right: 8.h)),
          SizedBox(height: 20.h),
          AppbarSubtitleTwo(text: StringResources.strChooseProfile.tr),
        ],
      ),
    );
  }

  Widget _buildListoliverone(BuildContext context) {
    return Obx(() {
      return ListView.separated(
        padding: EdgeInsets.zero,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) => SizedBox(height: 14.h),
        itemCount: controller.getProfiles.length,
        itemBuilder: (context, index) {
          return ListoliverOneItemWidget(
            profile: controller.getProfiles[index],
            isSelected:
                selectedProfileIndex == index, // Pass selected state to widget
            onTap: () {
              setState(() {
                selectedProfileIndex = index; // Update selected profile
              });
            },
            onDelete: () {
              print('Profile ID: ${controller.getProfiles[index].id}');
              controller.deleteProfileApi(
                context,
                controller.getProfiles[index].id,
              );
            },
          );
        },
      );
    });
  }

  onTapImagethirtyfive() {
    Get.back();
  }

  onTapContinue() {
    print('selectedProfileIndex: $selectedProfileIndex');
    print('Profile ID: ${controller.getProfiles[selectedProfileIndex!].id}');
    SessionHelper().setProfileId(
        controller.getProfiles[selectedProfileIndex!].id!.toInt());
    Get.toNamed(AppRoutes.howItWorksScreen);
  }

  onTapAddProfile() {
    Get.toNamed(AppRoutes.signInFiveScreen);
  }
}
