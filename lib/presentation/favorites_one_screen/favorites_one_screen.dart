import 'package:ai_measurement/core/utils/string_resources.dart';
import 'package:ai_measurement/presentation/when_clicked_on_fav_product_icon_dialog/add_to_favourite_controller/add_to_favourite_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

import '../../core/app_export.dart';
import 'widgets/favoritesone_item_widget.dart';

class FavoritesOneScreen extends StatefulWidget {
  const FavoritesOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<FavoritesOneScreen> createState() => _FavoritesOneScreenState();
}

class _FavoritesOneScreenState extends State<FavoritesOneScreen> {
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: Container(
          height: 802.h,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 844.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // CustomImageView(
                    //   imagePath: ImageConstant.imgFrame3859,
                    //   height: 214.h,
                    //   width: 162.h,
                    //   radius: BorderRadius.circular(
                    //     14.h,
                    //   ),
                    //   alignment: Alignment.bottomLeft,
                    //   margin: EdgeInsets.only(left: 32.h),
                    // ),
                    // CustomImageView(
                    //   imagePath: ImageConstant.imgFrame3860,
                    //   height: 214.h,
                    //   width: 162.h,
                    //   radius: BorderRadius.circular(
                    //     14.h,
                    //   ),
                    //   alignment: Alignment.bottomRight,
                    //   margin: EdgeInsets.only(right: 34.h),
                    // ),
                    SizedBox(
                      width: double.maxFinite,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            StringResources.strFavourites.tr,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.headlineSmall!.copyWith(
                              height: 1.19,
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Text(
                            StringResources.strYourStyleFavourites.tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                          SizedBox(height: 10.h),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage33,
                            height: 24.h,
                            width: 26.h,
                          ),
                          SizedBox(height: 8.h),
                          Obx(
                            () => Text(
                              "${controller.collections.length} ${StringResources.strItems.tr}",
                              style: CustomTextStyles.titleSmallPrimary,
                            ),
                          ),
                          SizedBox(height: 22.h),
                          _buildFavoritesone(context)
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: appTheme.black900,
          foregroundColor: appTheme.whiteA700,
          shape: CircleBorder(),
          child: Icon(
            Icons.add,
          ),
          onPressed: () {
            onTapFloatingActionButton();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFavoritesone(BuildContext context) {
    return Obx(() {
      if (controller.collections.isEmpty) return Container();
      print("length of collections: ${controller.collections.length}");
      return Expanded(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ResponsiveGridListBuilder(
            minItemWidth: 1,
            minItemsPerRow: 2,
            maxItemsPerRow: 2,
            horizontalGridSpacing: 14.h,
            verticalGridSpacing: 14.h,
            builder: (context, items) => ListView(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              physics: BouncingScrollPhysics(),
              children: items,
            ),
            gridItems: List.generate(
              controller.collections.length,
              (index) {
                return FavoritesoneItemWidget(
                  onTapImgFrame: () {
                    onTapImgFrame(controller.collections[index].id,
                        controller.collections[index].name);
                  },
                );
              },
            ),
          ),
        ),
      );
    });
  }

  /// Navigates to the favorites3CustomTitleScreen when the action is triggered.
  onTapImgFrame(id, name) {
    Get.toNamed(AppRoutes.favorites3CustomTitleScreen,
        arguments: {"id": id, "name": name});
  }

  onTapFloatingActionButton() {
    Get.toNamed(AppRoutes.favorites2CustomTitleScreen);
  }
}
