import 'package:ai_measurement/presentation/favorites_2_custom_title_screen/controller/create_collection_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/app_export.dart';
import '../../core/utils/string_resources.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_floating_text_field.dart';

class Favorites2CustomTitleScreen extends StatelessWidget {
  Favorites2CustomTitleScreen({Key? key})
      : super(
          key: key,
        );

  final controller = Get.put(CreateCollectionController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.whiteA700,
      appBar: _buildAppbar(context),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        top: false,
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 28.h,
            vertical: 4.h,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // GestureDetector(
              //   onTap: () {
              //     onTapAdd(context);
              //   },
              //   child: Container(
              //     height: 132.h,
              //     width: 100.h,
              //     margin: EdgeInsets.only(left: 2.h),
              //     decoration: AppDecoration.outlineGray.copyWith(
              //       borderRadius: BorderRadiusStyle.roundedBorder14,
              //     ),
              //     child: Stack(
              //       alignment: Alignment.center,
              //       children: [
              //         CustomImageView(
              //           imagePath: ImageConstant.imgImage49,
              //           height: 50.h,
              //           width: 52.h,
              //         )
              //       ],
              //     ),
              //   ),
              // ),
              CustomFloatingTextField(
                controller: controller.collectionController,
                labelText: StringResources.strCollection.tr,
                labelStyle: CustomTextStyles.titleSmallSemiBold,
                hintText: StringResources.strCollection.tr,
                textInputAction: TextInputAction.done,
                contentPadding: EdgeInsets.fromLTRB(18.h, 18.h, 18.h, 10.h),
                borderDecoration:
                    FloatingTextFormFieldStyleHelper.fillOnPrimary,
                filled: true,
                fillColor: theme.colorScheme.onPrimary,
              ),
              Spacer(),
              CustomElevatedButton(
                text: StringResources.strCreateCollection.tr,
                onPressed: () {
                  onTapCreateCollection(context);
                },
              ),
              SizedBox(height: 38.h)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      height: 50.h,
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
        text: StringResources.strCreateCollection.tr,
      ),
    );
  }

  // void showPopupAddingFavorites(BuildContext context) {
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AddingButtonPopupFav2PartyDialog();
  //     },
  //   );
  // }

  /// Navigates to the favoritesOneScreen when the action is triggered.
  onTapImagethirtyfive() {
    Get.back();
  }

  // onTapAdd(BuildContext context) {
  //   showPopupAddingFavorites(context);
  // }

  /// Navigates to the favoritesOneScreen when the action is triggered.
  onTapCreateCollection(BuildContext context) {
    controller.createCollectionApi(context);
  }
}
