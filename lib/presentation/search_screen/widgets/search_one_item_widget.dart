import 'package:flutter/material.dart' hide SearchController;
import 'package:get/get.dart';

import '../../../core/app_export.dart';
import '../../../core/utils/string_resources.dart';

// ignore_for_file: must_be_immutable
class SearchOneItemWidget extends StatelessWidget {
  SearchOneItemWidget({Key? key, this.onTapColumnsunglasse})
      : super(
          key: key,
        );

  VoidCallback? onTapColumnsunglasse;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapColumnsunglasse?.call();
      },
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(vertical: 16.h),
        decoration: AppDecoration.outlineGray100.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder14,
        ),
        child: Column(
          spacing: 20,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 24.h),
            CustomImageView(
              imagePath: ImageConstant.imgEllipse1444,
              height: 116.h,
              width: 116.h,
              radius: BorderRadius.circular(
                58.h,
              ),
            ),
            Text(
              StringResources.strSunglasses.tr,
              style: CustomTextStyles.titleMediumMontserratBlack900Medium,
            )
          ],
        ),
      ),
    );
  }
}
