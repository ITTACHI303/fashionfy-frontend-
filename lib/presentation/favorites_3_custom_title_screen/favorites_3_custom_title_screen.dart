import 'package:ai_measurement/core/utils/string_resources.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../adding_button_popup_fav2_party_dialog/adding_button_popup_fav2_party_dialog.dart';
import 'controller/favourite_by_collection_controller.dart';
import 'widgets/grid_item_widget.dart';

class Favorites3CustomTitleScreen extends StatefulWidget {
  const Favorites3CustomTitleScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<Favorites3CustomTitleScreen> createState() =>
      _Favorites3CustomTitleScreenState();
}

class _Favorites3CustomTitleScreenState
    extends State<Favorites3CustomTitleScreen> {
  final collectionId = Get.arguments['id'];
  final collectionName = Get.arguments['name'];
  final controller = Get.put(FavouriteByCollectionController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration.zero, () {
      controller.loadFavouritesByCollection(context, collectionId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        appBar: _buildAppbar(context),
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(
              left: 28.h,
              top: 48.h,
              right: 28.h,
            ),
            child: Column(
              children: [
                // _buildRow(context),
                // SizedBox(height: 94.h),
                _buildGrid(context),
                SizedBox(height: 24.h),
                CustomElevatedButton(
                  text: StringResources.strRemove.tr,
                  onPressed: () {
                    onTapRemove(context);
                  },
                ),
                SizedBox(height: 26.h)
              ],
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
        text: collectionName,
      ),
    );
  }

  /// Section Widget
  Widget _buildRow(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 70.h),
            child: CustomIconButton(
              height: 18.h,
              width: 18.h,
              decoration: IconButtonStyleHelper.none,
              child: CustomImageView(
                imagePath: ImageConstant.imgImage50,
              ),
            ),
          ),
          CustomIconButton(
            height: 18.h,
            width: 18.h,
            decoration: IconButtonStyleHelper.none,
            child: CustomImageView(
              imagePath: ImageConstant.imgImage5018x18,
            ),
          ),
          Container(
            height: 18.h,
            width: 18.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.img0x0,
                ),
                fit: BoxFit.fill,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGrid(BuildContext context) {
    return Obx(
      () => Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.h),
        child: ResponsiveGridListBuilder(
          minItemWidth: 1,
          minItemsPerRow: 3,
          maxItemsPerRow: 3,
          // horizontalGridSpacing: 96.h,
          // verticalGridSpacing: 96.h,
          builder: (context, items) => ListView(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: NeverScrollableScrollPhysics(),
            children: items,
          ),
          gridItems: List.generate(
            controller.favouritesByCollection.length + 1,
            (index) {
              if (index ==
                  List.generate(controller.favouritesByCollection.length + 1,
                          (index) => index).length -
                      1) {
                return GestureDetector(
                  onTap: () {
                    onTapAdd(context);
                  },
                  child: Container(
                    height: 132.h,
                    width: 100.h,
                    margin: EdgeInsets.only(left: 2.h),
                    decoration: AppDecoration.outlineGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder14,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage49,
                          height: 50.h,
                          width: 52.h,
                        )
                      ],
                    ),
                  ),
                );
              } else {
                return GridItemWidget();
              }
            },
          ),
        ),
      ),
    );
  }

  Future<void> showPopupAddingFavorites(BuildContext context) async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AddingButtonPopupFav2PartyDialog(collectionId: collectionId);
      },
    ).then((value) {
      controller.loadFavouritesByCollection(context, collectionId);
    });
  }

  /// Navigates to the favoritesOneScreen when the action is triggered.
  onTapImagethirtyfive() {
    Get.back();
  }

  /// Navigates to the favoritesOneScreen when the action is triggered.
  onTapRemove(BuildContext context) {
    Get.back();
  }

  onTapAdd(BuildContext context) {
    showPopupAddingFavorites(context);
  }
}
