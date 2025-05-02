import 'package:ai_measurement/core/utils/string_resources.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class AddingButtonPopupFav3TourDialog extends StatelessWidget {
  AddingButtonPopupFav3TourDialog({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 14.h,
          ),
          decoration: AppDecoration.outlineErrorContainer.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder14,
          ),
          child: Column(
            spacing: 22,
            mainAxisSize: MainAxisSize.max,
            children: [
              _buildRowaddin(context),
              Padding(
                padding: EdgeInsets.only(
                  left: 24.h,
                  right: 22.h,
                ),
                child: CustomSearchView(
                  controller: searchController,
                  hintText: StringResources.strNike098.tr,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 8.h,
                  ),
                ),
              ),
              _buildRownike098(context)
            ],
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildRowaddin(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 86.h),
            child: Text(
              StringResources.strAddToFavourites.tr,
              style: CustomTextStyles.titleMediumMontserratBlack900,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage501,
            height: 18.h,
            width: 20.h,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRownike098(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 18.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse1442,
            height: 38.h,
            width: 40.h,
            radius: BorderRadius.circular(
              18.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: Text(
              StringResources.strNike098.tr,
              style: CustomTextStyles.titleMediumMontserratBlack900Medium,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: Text(
              StringResources.str$85.tr,
              style: CustomTextStyles.titleSmallBlack900Medium,
            ),
          ),
          Spacer(),
          CustomIconButton(
            height: 24.h,
            width: 42.h,
            padding: EdgeInsets.all(4.h),
            decoration: IconButtonStyleHelper.none,
            child: CustomImageView(
              imagePath: ImageConstant.imgImage491,
            ),
          )
        ],
      ),
    );
  }
}
