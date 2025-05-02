import 'package:ai_measurement/presentation/when_clicked_on_fav_product_icon_dialog/add_to_favourite_controller/add_to_favourite_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/app_export.dart';
import '../../core/utils/string_resources.dart';
import 'widgets/listtour_to_item_widget.dart';

class WhenClickedOnFavProductIconDialog extends StatefulWidget {
  var productId;

  WhenClickedOnFavProductIconDialog({Key? key, this.productId})
      : super(key: key);

  @override
  State<WhenClickedOnFavProductIconDialog> createState() =>
      _WhenClickedOnFavProductIconDialogState();
}

class _WhenClickedOnFavProductIconDialogState
    extends State<WhenClickedOnFavProductIconDialog> {
  final controller = Get.put(AddToFavouriteController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration.zero, () {
      controller.loadCollections(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(
          horizontal: 10.h,
          vertical: 14.h,
        ),
        decoration: AppDecoration.outlineErrorContainer.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder14,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildRowAddTo(context),
            SizedBox(height: 16.h),
            _buildListTourTo(context),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowAddTo(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 84.h),
            child: Text(
              StringResources.strAddToFavourites.tr,
              style: CustomTextStyles.titleMediumMontserratBlack900,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage501,
            height: 20.h,
            width: 20.h,
            onTap: () {
              onTapCancel();
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildListTourTo(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: Padding(
        padding: EdgeInsets.only(left: 24.h, right: 16.h),
        child: ListView.separated(
          padding: EdgeInsets.zero,
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 14.h);
          },
          itemCount: controller.collections.length,
          itemBuilder: (context, index) {
            return Obx(
              () => ListtourToItemWidget(
                collectionName: controller.collections[index].name,
                onTap: () {
                  controller.addFavouriteApi(context, widget.productId,
                      controller.collections[index].id.toString());
                },
              ),
            );
          },
        ),
      ),
    );
  }

  onTapCancel() {
    Get.back();
  }
}
