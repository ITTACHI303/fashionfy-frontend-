import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

// ignore_for_file: must_be_immutable
class FavoritesoneItemWidget extends StatelessWidget {
  FavoritesoneItemWidget({Key? key, this.onTapImgFrame})
      : super(
          key: key,
        );

  VoidCallback? onTapImgFrame;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgFrame3862,
      height: 214.h,
      radius: BorderRadius.circular(
        14.h,
      ),
      onTap: () {
        onTapImgFrame?.call();
      },
    );
  }
}
