import 'package:ai_measurement/core/utils/string_resources.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../popup_showing_worn_outfit_dialog/popup_showing_worn_outfit_dialog.dart';

class CamPermissionFourScreen extends StatelessWidget {
  const CamPermissionFourScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        appBar: _buildAppbar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 24.h),
                    child: Column(
                      spacing: 84,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        _buildRowphoneemail(context),
                        Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.symmetric(horizontal: 4.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 444.h,
                                width: 272.h,
                                child: Stack(
                                  alignment: Alignment.centerRight,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgImage26,
                                      height: 36.h,
                                      width: 38.h,
                                      alignment: Alignment.centerLeft,
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: EdgeInsets.only(
                                          left: 34.h,
                                          top: 32.h,
                                        ),
                                        color: theme.colorScheme.primary,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder26,
                                        ),
                                        child: Container(
                                          height: 52.h,
                                          width: 54.h,
                                          decoration: AppDecoration.fillPrimary
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder26,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgImage47,
                                                height: 40.h,
                                                width: 42.h,
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  onTapTxtArone();
                                                },
                                                child: Text(
                                                  StringResources.strAR.tr,
                                                  style: CustomTextStyles
                                                      .labelLargeOpenSansWhiteA700,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onLongPress: () {
                                        onLogPressImage(context);
                                      },
                                      child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgB0b1900521fc4,
                                        height: 444.h,
                                        width: 198.h,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgImage25,
                                height: 36.h,
                                width: 38.h,
                              )
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
        // bottomNavigationBar: _buildStackviewone(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgImage2025010,
        height: 40.h,
        width: 158.h,
        margin: EdgeInsets.only(left: 10.h),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 28.0),
          child: CustomImageView(
            imagePath: ImageConstant.imgImage24,
            onTap: () {},
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildRowphoneemail(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          Expanded(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 10.h),
              decoration: AppDecoration.fillPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder36,
              ),
              child: Column(
                spacing: 6,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage20,
                    height: 36.h,
                    width: 36.h,
                  ),
                  Text(
                    StringResources.strMeasure.tr,
                    style: CustomTextStyles.labelSmallGray400,
                  )
                ],
              ),
            ),
          ),
          SizedBox(width: 20.h),
          Expanded(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 10.h),
              decoration: AppDecoration.fillPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder36,
              ),
              child: Column(
                spacing: 6,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage21,
                    height: 36.h,
                    width: 36.h,
                  ),
                  Text(
                    StringResources.strTheme.tr,
                    style: CustomTextStyles.labelSmallGray400,
                  )
                ],
              ),
            ),
          ),
          SizedBox(width: 20.h),
          Expanded(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(
                top: 10.h,
                right: 18.h,
                bottom: 10.h,
              ),
              decoration: AppDecoration.fillPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder36,
              ),
              child: Column(
                spacing: 6,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage22,
                    height: 36.h,
                    width: 36.h,
                  ),
                  Text(
                    StringResources.strEmotes.tr,
                    style: CustomTextStyles.labelSmallGray400,
                  )
                ],
              ),
            ),
          ),
          SizedBox(width: 20.h),
          Expanded(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(
                top: 10.h,
                right: 18.h,
                bottom: 10.h,
              ),
              decoration: AppDecoration.fillPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder36,
              ),
              child: Column(
                spacing: 6,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage23,
                    height: 36.h,
                    width: 36.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 4.h),
                    child: Text(
                      StringResources.strMode.tr,
                      style: CustomTextStyles.labelSmallGray400,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  // Widget _buildStackviewone(BuildContext context) {
  //   return Container(
  //     height: 68.h,
  //     padding: EdgeInsets.symmetric(horizontal: 30.h),
  //     decoration: AppDecoration.fillBlueGray,
  //     width: double.maxFinite,
  //     child: Stack(
  //       alignment: Alignment.center,
  //       children: [
  //         Align(
  //           alignment: Alignment.centerLeft,
  //           child: Container(
  //             height: 48.h,
  //             width: 48.h,
  //             decoration: BoxDecoration(
  //               color: appTheme.whiteA700,
  //               borderRadius: BorderRadius.circular(
  //                 10.h,
  //               ),
  //               boxShadow: [
  //                 BoxShadow(
  //                   color: appTheme.whiteA7003f,
  //                   spreadRadius: 2.h,
  //                   blurRadius: 2.h,
  //                   offset: Offset(
  //                     0,
  //                     4,
  //                   ),
  //                 )
  //               ],
  //             ),
  //           ),
  //         ),
  //         SizedBox(
  //           width: double.maxFinite,
  //           child: Column(
  //             spacing: 6,
  //             mainAxisSize: MainAxisSize.min,
  //             children: [
  //               SizedBox(
  //                 width: double.maxFinite,
  //                 child: Row(
  //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                   children: [
  //                     SizedBox(
  //                       height: 24.h,
  //                       width: 26.h,
  //                       child: Stack(
  //                         alignment: Alignment.center,
  //                         children: [
  //                           CustomImageView(
  //                             imagePath: ImageConstant.imgImage27,
  //                             height: 24.h,
  //                             width: 24.h,
  //                           )
  //                         ],
  //                       ),
  //                     ),
  //                     SizedBox(
  //                       height: 24.h,
  //                       width: 26.h,
  //                       child: Stack(
  //                         alignment: Alignment.center,
  //                         children: [
  //                           CustomImageView(
  //                             imagePath: ImageConstant.imgImage28,
  //                             height: 24.h,
  //                             width: 24.h,
  //                           )
  //                         ],
  //                       ),
  //                     ),
  //                     SizedBox(
  //                       height: 24.h,
  //                       width: 26.h,
  //                       child: Stack(
  //                         alignment: Alignment.center,
  //                         children: [
  //                           CustomImageView(
  //                             imagePath: ImageConstant.imgImage32,
  //                             height: 24.h,
  //                             width: 24.h,
  //                           )
  //                         ],
  //                       ),
  //                     ),
  //                     SizedBox(
  //                       height: 24.h,
  //                       width: 26.h,
  //                       child: Stack(
  //                         alignment: Alignment.center,
  //                         children: [
  //                           CustomImageView(
  //                             imagePath: ImageConstant.imgImage31,
  //                             height: 24.h,
  //                             width: 24.h,
  //                           )
  //                         ],
  //                       ),
  //                     )
  //                   ],
  //                 ),
  //               ),
  //               SizedBox(
  //                 width: double.maxFinite,
  //                 child: Row(
  //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                   children: [
  //                     Text(
  //                       "Home",
  //                       style: CustomTextStyles.labelSmallBlack900,
  //                     ),
  //                     Text(
  //                       "Search",
  //                       style: theme.textTheme.labelSmall,
  //                     ),
  //                     Text(
  //                       "Favourites",
  //                       style: theme.textTheme.labelSmall,
  //                     ),
  //                     Text(
  //                       "Profile",
  //                       style: theme.textTheme.labelSmall,
  //                     )
  //                   ],
  //                 ),
  //               )
  //             ],
  //           ),
  //         )
  //       ],
  //     ),
  //   );
  // }

  void showWornOutfitDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return PopupShowingWornOutfitDialog();
      },
    );
  }

  /// Navigates to the vrScreen when the action is triggered.
  onTapTxtArone() {
    Get.toNamed(AppRoutes.vrScreen);
  }

  onLogPressImage(BuildContext context) {
    showWornOutfitDialog(context);
  }
}
