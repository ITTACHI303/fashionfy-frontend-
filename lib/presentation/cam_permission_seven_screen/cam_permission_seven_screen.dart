import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/app_export.dart';
import '../../core/utils/string_resources.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class CamPermissionSevenScreen extends StatelessWidget {
  const CamPermissionSevenScreen({Key? key})
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
              padding: EdgeInsets.only(top: 22.h),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgFreepikCandid650x402,
                    height: 650.h,
                    width: double.maxFinite,
                  ),
                  SizedBox(height: 26.h)
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
      height: 78.h,
      centerTitle: true,
      title: Column(
        children: [
          AppbarTitle(
            text: StringResources.strAnalyzing.tr,
            margin: EdgeInsets.only(
              left: 17.h,
              right: 20.h,
            ),
          ),
          AppbarSubtitleTwo(
            text: StringResources.strPleaseWaitForAWhile.tr,
          )
        ],
      ),
    );
  }
}
