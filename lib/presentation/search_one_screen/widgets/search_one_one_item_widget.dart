import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../when_clicked_on_fav_product_icon_dialog/when_clicked_on_fav_product_icon_dialog.dart';

class SearchOneOneItemWidget extends StatelessWidget {
  SearchOneOneItemWidget(
      {Key? key,
      this.onTapColumnnikeone,
      this.productId,
      this.productName,
      this.productDescription,
      this.productImage,
      this.productPrice})
      : super(
          key: key,
        );
  String? productName;
  String? productId;
  String? productDescription;
  String? productPrice;
  String? productImage;
  VoidCallback? onTapColumnnikeone;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            onTapColumnnikeone?.call();
          },
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.all(14.h),
            decoration: AppDecoration.outlineGray1001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder14,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFavorite,
                  height: 16.h,
                  width: 22.h,
                  alignment: Alignment.centerRight,
                ),
                SizedBox(height: 4.h),
                productImage != null
                    ? Image.network(productImage!)
                    : CustomImageView(
                        imagePath: ImageConstant.imgImage364x128,
                        height: 64.h,
                        width: double.maxFinite,
                      ),
                SizedBox(height: 14.h),
                Text(
                  productName!,
                  style: CustomTextStyles.titleMediumMontserratBlack900Medium,
                ),
                SizedBox(height: 6.h),
                SizedBox(
                  width: 112.h,
                  child: Text(
                    productDescription!,
                    maxLines: 2,
                    // overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.labelLargeGray60001.copyWith(
                      height: 1.23,
                    ),
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  "\$ ${productPrice!}",
                  style: CustomTextStyles.titleSmallBlack900Medium,
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 10.h, top: 10.h),
          child: GestureDetector(
            onTap: () {
              showAddFavouriteDialog(context);
            },
            child: CustomImageView(
              imagePath: ImageConstant.imgImage3224x24,
              height: 16.h,
              alignment: Alignment.topRight,
            ),
          ),
        ),
      ],
    );
  }

  void showAddFavouriteDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return WhenClickedOnFavProductIconDialog(productId: productId);
      },
    );
    // controller.addFavouriteApi(context, productId!);
  }
}
