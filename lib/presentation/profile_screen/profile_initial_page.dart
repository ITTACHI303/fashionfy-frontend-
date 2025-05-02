import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/app_export.dart';
import '../../core/utils/string_resources.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_switch.dart';

class ProfileInitialPage extends StatefulWidget {
  const ProfileInitialPage({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileInitialPageState createState() => ProfileInitialPageState();
}

// ignore_for_file: must_be_immutable
class ProfileInitialPageState extends State<ProfileInitialPage> {
  bool isSelectedSwitch = false;
  bool isSelectedSwitch1 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(
                width: double.maxFinite,
                child: _buildAppbar(context),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 10.h),
                    child: Column(
                      children: [
                        SizedBox(height: 14.h),
                        Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.only(top: 14.h),
                          decoration:
                              AppDecoration.outlineErrorContainer.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder14,
                          ),
                          child: Column(
                            spacing: 20,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: double.maxFinite,
                                margin: EdgeInsets.symmetric(horizontal: 28.h),
                                child: Row(
                                  children: [
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgEllipse143938x38,
                                      height: 38.h,
                                      width: 38.h,
                                      radius: BorderRadius.circular(
                                        18.h,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: 20.h,
                                          bottom: 8.h,
                                        ),
                                        child: Text(
                                          StringResources.strOliverWyman.tr,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: double.maxFinite,
                                child: Divider(
                                  color: appTheme.gray40001,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 24.h),
                                  child: Text(
                                    StringResources.strAccountSettings.tr,
                                    style: CustomTextStyles.bodyLargeGray50001,
                                  ),
                                ),
                              ),
                              _buildStackeditprofil(context),
                              _buildRowsound(context),
                              SizedBox(
                                width: double.maxFinite,
                                child: Divider(
                                  color: appTheme.gray40001,
                                ),
                              ),
                              _buildStackmoreone(context),
                              SizedBox(height: 26.h)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildColumnsettings(
    BuildContext context, {
    required String settingsOne,
    Function? onTapColumnsettings,
  }) {
    return GestureDetector(
      onTap: () {
        onTapColumnsettings?.call();
      },
      child: Row(
        children: [
          Text(
            settingsOne,
            style: theme.textTheme.bodyLarge!.copyWith(
              color: appTheme.black900,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgVectorErrorcontainer,
            height: 12.h,
            width: 8.h,
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(right: 8.h),
          )
        ],
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      height: 50.h,
      centerTitle: true,
      title: AppbarTitle(
        text: StringResources.strSettings.tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildStackeditprofil(BuildContext context) {
    return Container(
      height: 160.h,
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        // alignment: Alignment.bottomCenter,
        spacing: 16,
        children: [
          _buildColumnsettings(
            context,
            settingsOne: StringResources.strEditProfile.tr,
            onTapColumnsettings: () {
              onTapColumneditprofi();
            },
          ),
          _buildColumnsettings(
            context,
            settingsOne: StringResources.strSettings.tr,
            onTapColumnsettings: () {
              onTapColumnSettings();
            },
          ),
          _buildColumnsettings(
            context,
            settingsOne: StringResources.strHelp.tr,
            onTapColumnsettings: () {
              onTapColumnHelp();
            },
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: double.maxFinite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      StringResources.strNotifications.tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                    CustomSwitch(
                      value: isSelectedSwitch,
                      onChange: (value) {
                        setState(() {
                          isSelectedSwitch = value;
                        });
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowsound(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            StringResources.strSound.tr,
            style: theme.textTheme.bodyLarge,
          ),
          CustomSwitch(
            value: isSelectedSwitch1,
            onChange: (value) {
              setState(() {
                isSelectedSwitch1 = value;
              });
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStackmoreone(BuildContext context) {
    return Container(
      height: 226.h,
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(
                left: 8.h,
                right: 14.h,
              ),
              child: Column(
                spacing: 16,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      StringResources.strMore.tr,
                      style: CustomTextStyles.bodyLargeGray50001,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: GestureDetector(
                      onTap: () {
                        onTapColumnaboutus();
                      },
                      child: SizedBox(
                        width: double.maxFinite,
                        child: Row(
                          children: [
                            Text(
                              StringResources.strAboutUs.tr,
                              style: theme.textTheme.bodyLarge,
                            ),
                            Spacer(),
                            CustomImageView(
                              imagePath: ImageConstant.imgVectorErrorcontainer,
                              height: 12.h,
                              width: 8.h,
                              alignment: Alignment.centerRight,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    child: GestureDetector(
                      onTap: () {
                        onTapColumnPrivacyPolicy();
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              StringResources.strPrivacyPolicy.tr,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                          Spacer(),
                          CustomImageView(
                            imagePath: ImageConstant.imgVectorErrorcontainer,
                            height: 12.h,
                            width: 8.h,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    child: GestureDetector(
                      onTap: () {
                        onTapRowtermandcondi();
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              StringResources.strTermsAndConditions.tr,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                          Spacer(),
                          CustomImageView(
                            imagePath: ImageConstant.imgVectorErrorcontainer,
                            height: 12.h,
                            width: 8.h,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: double.maxFinite,
                child: GestureDetector(
                  onTap: () {
                    onTapButton();
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 4.h),
                    decoration: AppDecoration.outlineBlack9001.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder4,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 4.h),
                          child: Text(
                            StringResources.strLogout.tr,
                            style: CustomTextStyles.titleMediumBlack90001,
                          ),
                        ),
                        SizedBox(width: 5.h),
                        CustomImageView(
                          imagePath: ImageConstant.imgImage34,
                          height: 18.h,
                          width: 18.h,
                          margin: EdgeInsets.only(bottom: 4.h),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  /// Navigates to the editProfileScreen when the action is triggered.
  onTapColumneditprofi() {
    Get.toNamed(AppRoutes.editProfileScreen);
  }

  onTapColumnSettings() {
    Get.toNamed(AppRoutes.settingsScreen);
  }

  onTapColumnHelp() {
    Get.toNamed(AppRoutes.helpScreen);
  }

  /// Navigates to the aboutUsScreen when the action is triggered.
  onTapColumnaboutus() {
    Get.toNamed(AppRoutes.aboutUsScreen);
  }

  onTapColumnPrivacyPolicy() {
    Get.toNamed(AppRoutes.privacyPolicyScreen);
  }

  /// Navigates to the privacyPolicyScreen when the action is triggered.
  onTapRowtermandcondi() {
    Get.toNamed(AppRoutes.termsConditionsScreen);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapButton() {
    Get.offAllNamed(AppRoutes.loginScreen);
  }
}
