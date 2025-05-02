import 'package:ai_measurement/core/utils/string_resources.dart';
import 'package:ai_measurement/presentation/search_one_screen/product_controller/products_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_search_view.dart';
import '../when_clicked_on_fav_product_icon_dialog/add_to_favourite_controller/add_to_favourite_controller.dart';

// ignore_for_file: must_be_immutable
class AddingButtonPopupFav2PartyDialog extends StatefulWidget {
  final int collectionId;
  final dynamic onSearch;
  AddingButtonPopupFav2PartyDialog(
      {Key? key, required this.collectionId, this.onSearch})
      : super(key: key);

  @override
  State<AddingButtonPopupFav2PartyDialog> createState() =>
      _AddingButtonPopupFav2PartyDialogState();
}

class _AddingButtonPopupFav2PartyDialogState
    extends State<AddingButtonPopupFav2PartyDialog> {
  final addFavouriteController = Get.put(AddToFavouriteController());
  final productController = Get.put(ProductsController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration.zero, () {
      productController.loadProducts(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14.0),
      ),
      child: Container(
        height: 300.h,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 14.h),
        decoration: AppDecoration.outlineErrorContainer.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder14,
        ),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.6,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildRowAddIn(context),
                SizedBox(height: 22.h), // Fix spacing issue
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: CustomSearchView(
                    controller: productController.searchController,
                    hintText: StringResources.strNike098.tr,
                    onSearch: (value) {
                      if (value.isNotEmpty) {
                        productController.searchProductsApi(context);
                      } else {
                        productController.loadProducts(context);
                      }
                    },
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10.h,
                      vertical: 8.h,
                    ),
                  ),
                ),
                SizedBox(height: 22.h), // Fix spacing issue
                _buildRowNike098(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowAddIn(BuildContext context) {
    return Row(
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
          height: 20.h,
          width: 20.h,
          onTap: () {
            onTapClose();
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildRowNike098(BuildContext context) {
    return Obx(
      () => SizedBox(
        height: 200.h,
        child: ListView.builder(
          itemCount: productController.fetchProducts.length,
          padding: EdgeInsets.symmetric(horizontal: 18.h),
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 8.h), // Optional spacing between items
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse1442,
                    height: 38.h,
                    width: 40.h,
                    radius: BorderRadius.circular(18.h),
                  ),
                  Text(
                    productController.fetchProducts[index].name!,
                    style: CustomTextStyles.titleMediumMontserratBlack900Medium,
                  ),
                  Text(
                    "\$${productController.fetchProducts[index].price}",
                    style: CustomTextStyles.titleSmallBlack900Medium,
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.h, vertical: 4.h),
                    decoration: AppDecoration.outlineGray60033.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder14,
                    ),
                    child: CustomIconButton(
                      height: 24.h,
                      width: 42.h,
                      padding: EdgeInsets.all(4.h),
                      decoration: IconButtonStyleHelper.none,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgImage49,
                        color: appTheme.whiteA700,
                      ),
                      onTap: () {
                        addFavouriteController.addFavouriteApi(
                            context,
                            productController.fetchProducts[index].id
                                .toString(),
                            widget.collectionId.toString());
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  onTapClose() {
    Get.back();
  }
}
