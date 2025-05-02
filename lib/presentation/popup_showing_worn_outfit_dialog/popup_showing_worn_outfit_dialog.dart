import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/app_export.dart';
import '../../core/utils/string_resources.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'widgets/listcap_one_item_widget.dart';

class PopupShowingWornOutfitDialog extends StatelessWidget {
  const PopupShowingWornOutfitDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      // Wrap the entire popup in a Dialog to ensure proper layout
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 14.h),
        decoration: AppDecoration.outlineErrorContainer.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder14,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min, // Ensures it takes only needed space
          children: [
            _buildAppbar(context),
            SizedBox(height: 14.h),
            _buildListcapone(context),
            SizedBox(height: 14.h),
          ],
        ),
      ),
    );
  }

  /// App Bar Section
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      height: 20.h,
      centerTitle: true,
      title: AppbarSubtitle(
        text: StringResources.strItems.tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgImage501,
          height: 18.h,
          width: 18.h,
          margin: EdgeInsets.only(right: 11.h),
          onTap: () {
            onTapImage501();
          },
        )
      ],
    );
  }

  /// List Section
  Widget _buildListcapone(BuildContext context) {
    return SizedBox(
      height: 200.h, // Provide a defined height
      child: Padding(
        padding: EdgeInsets.only(left: 32.h, right: 26.h),
        child: ListView.separated(
          padding: EdgeInsets.zero,
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 14.h);
          },
          itemCount: 4,
          itemBuilder: (context, index) {
            return ListcapOneItemWidget();
          },
        ),
      ),
    );
  }

  onTapImage501() {
    Get.back();
  }
}
