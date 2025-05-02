import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/app_export.dart';
import '../../core/utils/string_resources.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class CamPermissionThreeScreen extends StatelessWidget {
  const CamPermissionThreeScreen({Key? key})
      : super(
          key: key,
        );

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
                left: 20.h,
                top: 10.h,
                right: 20.h,
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Text(
                        StringResources.strReviewMeasuredData.tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                      SizedBox(height: 22.h),
                      Stack(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgFreepikCandid652x402,
                            height: 326.h,
                            width: double.maxFinite,
                            margin: EdgeInsets.symmetric(horizontal: 78.h),
                          ),
                          Positioned(
                            top: 75.h,
                            left: 150.h,
                            child: Container(
                              width: 50.h,
                              height: 2.h,
                              color: Colors.yellow,
                            ),
                          ),
                          Positioned(
                            top: 80.h,
                            left: 139.h,
                            child: Transform.rotate(
                              angle: 6.58,
                              child: Container(
                                width: 13.h,
                                height: 2.h,
                                color: Colors.pinkAccent,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 120.h,
                            left: 150.h,
                            child: Container(
                              width: 50.h,
                              height: 2.h,
                              color: Color(0xFF105BFE),
                            ),
                          ),
                          Positioned(
                            top: 135.h,
                            left: 148.h,
                            child: Container(
                              width: 55.h,
                              height: 2.h,
                              color: Color(0xFF4506FF),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: 3.h,
                              height: 310.h,
                              color: Colors.red.shade900,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      _buildInputone(context),
                      SizedBox(height: 14.h),
                      _buildColumnviewone(context),
                      SizedBox(height: 46.h)
                    ],
                  ),
                  Positioned(
                    bottom: 20.h,
                    right: 20.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgImage19,
                      height: 40.h,
                      width: 40.h,
                      onTap: () {
                        onTapImgImagenineteen();
                      },
                    ),
                  )
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
        text: StringResources.strMeasurements.tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildInputone(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6.h),
      padding: EdgeInsets.symmetric(
        horizontal: 32.h,
        vertical: 6.h,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      width: double.maxFinite,
      child: Row(
        children: [
          Container(
            height: 38.h,
            width: 38.h,
            decoration: BoxDecoration(
              color: appTheme.redA7007f,
              borderRadius: BorderRadius.circular(
                18.h,
              ),
              border: Border.all(
                color: appTheme.whiteA70001,
                width: 0.35.h,
              ),
              boxShadow: [
                BoxShadow(
                  color: appTheme.black900.withValues(
                    alpha: 0.25,
                  ),
                  spreadRadius: 2.h,
                  blurRadius: 2.h,
                  offset: Offset(
                    0,
                    1.4,
                  ),
                )
              ],
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
                StringResources.strHeight.tr,
                style: theme.textTheme.titleSmall,
              ),
            ),
          ),
          Spacer(
            flex: 54,
          ),
          Text(
            StringResources.str170CM.tr,
            style: theme.textTheme.titleSmall,
          ),
          Spacer(
            flex: 45,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnviewone(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Column(
        spacing: 14,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 32.h,
              vertical: 6.h,
            ),
            decoration: AppDecoration.fillOnPrimary.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            width: double.maxFinite,
            child: Row(
              children: [
                Container(
                  height: 38.h,
                  width: 38.h,
                  decoration: BoxDecoration(
                    color: appTheme.yellowA7007f,
                    borderRadius: BorderRadius.circular(
                      18.h,
                    ),
                    border: Border.all(
                      color: appTheme.whiteA70001,
                      width: 0.35.h,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: appTheme.black900.withValues(
                          alpha: 0.25,
                        ),
                        spreadRadius: 2.h,
                        blurRadius: 2.h,
                        offset: Offset(
                          0,
                          1.4,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    StringResources.strChest.tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Spacer(
                  flex: 55,
                ),
                Text(
                  StringResources.str96CM.tr,
                  style: theme.textTheme.titleSmall,
                ),
                Spacer(
                  flex: 44,
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 32.h,
              vertical: 6.h,
            ),
            decoration: AppDecoration.fillOnPrimary.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            width: double.maxFinite,
            child: Row(
              children: [
                Container(
                  height: 38.h,
                  width: 38.h,
                  decoration: BoxDecoration(
                    color: appTheme.pinkA4007f,
                    borderRadius: BorderRadius.circular(
                      18.h,
                    ),
                    border: Border.all(
                      color: appTheme.whiteA70001,
                      width: 0.35.h,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: appTheme.black900.withValues(
                          alpha: 0.25,
                        ),
                        spreadRadius: 2.h,
                        blurRadius: 2.h,
                        offset: Offset(
                          0,
                          1.4,
                        ),
                      )
                    ],
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
                      StringResources.strBicep.tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                ),
                Spacer(
                  flex: 54,
                ),
                Text(
                  StringResources.str33CM.tr,
                  style: theme.textTheme.titleSmall,
                ),
                Spacer(
                  flex: 45,
                )
              ],
            ),
          ),
          // ListView.builder(
          //   padding: EdgeInsets.zero,
          //   physics: NeverScrollableScrollPhysics(),
          //   shrinkWrap: true,
          //   itemCount: 3,
          //   itemBuilder: (context, index) {
          //     return ListviewItemWidget();
          //   },
          // )
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 32.h,
              vertical: 6.h,
            ),
            decoration: AppDecoration.fillOnPrimary.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            width: double.maxFinite,
            child: Row(
              children: [
                Container(
                  height: 38.h,
                  width: 38.h,
                  decoration: BoxDecoration(
                    color: appTheme.lightBlueA4007f,
                    borderRadius: BorderRadius.circular(
                      18.h,
                    ),
                    border: Border.all(
                      color: appTheme.whiteA70001,
                      width: 0.35.h,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: appTheme.black900.withValues(
                          alpha: 0.25,
                        ),
                        spreadRadius: 2.h,
                        blurRadius: 2.h,
                        offset: Offset(
                          0,
                          1.4,
                        ),
                      )
                    ],
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
                      StringResources.strWaist.tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                ),
                Spacer(
                  flex: 54,
                ),
                Text(
                  StringResources.str99CM.tr,
                  style: theme.textTheme.titleSmall,
                ),
                Spacer(
                  flex: 45,
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 32.h,
              vertical: 6.h,
            ),
            decoration: AppDecoration.fillOnPrimary.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            width: double.maxFinite,
            child: Row(
              children: [
                Container(
                  height: 38.h,
                  width: 38.h,
                  decoration: BoxDecoration(
                    color: appTheme.purple.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(
                      18.h,
                    ),
                    border: Border.all(
                      color: appTheme.whiteA70001,
                      width: 0.35.h,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: appTheme.black900.withValues(
                          alpha: 0.25,
                        ),
                        spreadRadius: 2.h,
                        blurRadius: 2.h,
                        offset: Offset(
                          0,
                          1.4,
                        ),
                      )
                    ],
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
                      StringResources.strHip.tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                ),
                Spacer(
                  flex: 54,
                ),
                Text(
                  StringResources.str99CM.tr,
                  style: theme.textTheme.titleSmall,
                ),
                Spacer(
                  flex: 45,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Navigates to the camPermissionTwoScreen when the action is triggered.
  onTapImagethirtyfive() {
    Get.back();
  }

  onTapImgImagenineteen() {
    Get.offAllNamed(AppRoutes.bottomNavigationBar);
  }
}
