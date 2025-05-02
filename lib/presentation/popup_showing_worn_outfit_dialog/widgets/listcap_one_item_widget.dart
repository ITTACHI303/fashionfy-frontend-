import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/app_export.dart';
import '../../../core/utils/string_resources.dart';

class ListcapOneItemWidget extends StatelessWidget {
  const ListcapOneItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImage38x38,
          height: 38.h,
          width: 40.h,
          radius: BorderRadius.circular(
            18.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.h),
          child: Text(
            StringResources.strCap.tr,
            style: CustomTextStyles.titleMediumMontserratBlack900Medium,
          ),
        ),
        Spacer(
          flex: 66,
        ),
        Text(
          StringResources.str$85.tr,
          style: CustomTextStyles.titleSmallBlack900Medium,
        ),
        Spacer(
          flex: 33,
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 15.h,
            vertical: 8.h,
          ),
          decoration: AppDecoration.outlineGray60033.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder14,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                StringResources.strBuy.tr,
                style: CustomTextStyles.labelSmallOpenSans,
              )
            ],
          ),
        )
      ],
    );
  }
}
