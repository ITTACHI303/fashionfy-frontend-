import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_icon_button.dart';

class ListtourToItemWidget extends StatelessWidget {
  final dynamic collectionName;
  final dynamic onTap;

  const ListtourToItemWidget({Key? key, this.collectionName, this.onTap})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse144238x38,
            height: 38.h,
            width: 40.h,
            radius: BorderRadius.circular(
              18.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 26.h),
            child: Text(
              collectionName,
              style: CustomTextStyles.titleMediumMontserratBlack900Medium,
            ),
          ),
          SizedBox(width: 16.h),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 4.h,
            ),
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
              onTap: onTap,
            ),
          )
        ],
      ),
    );
  }
}
