import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class GridItemWidget extends StatelessWidget {
  const GridItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 132.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrame3865,
            height: 132.h,
            width: double.maxFinite,
            radius: BorderRadius.circular(
              14.h,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage501,
            height: 18.h,
            width: 20.h,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(
              top: 4.h,
              right: 4.h,
            ),
          )
        ],
      ),
    );
  }
}
