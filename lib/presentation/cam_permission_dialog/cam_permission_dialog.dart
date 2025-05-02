import 'package:ai_measurement/core/utils/string_resources.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/app_export.dart'; // ignore_for_file: must_be_immutable

class CamPermissionDialog extends StatelessWidget {
  const CamPermissionDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 22.h,
            vertical: 14.h,
          ),
          decoration: AppDecoration.fillGrayEa.copyWith(
            borderRadius: BorderRadiusStyle.customBorderTL14,
          ),
          child: Column(
            spacing: 6,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                StringResources.strFashionfyWouldLikeToAccessCamera.tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style:
                    CustomTextStyles.titleMediumMontserratBlack90017.copyWith(
                  height: 1.29,
                ),
              ),
              Text(
                StringResources.strToTakePicturesAndDetectFace.tr,
                style: CustomTextStyles.labelLargeBlack900Medium,
              ),
              SizedBox(height: 2.h)
            ],
          ),
        )
      ],
    );
  }
}
