import 'package:ai_measurement/core/utils/string_resources.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/app_export.dart';

class ListviewItemWidget extends StatelessWidget {
  const ListviewItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 32.h,
        vertical: 6.h,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Row(
        children: [
          Container(
            height: 38.h,
            width: 38.h,
            decoration: BoxDecoration(
              color: appTheme.lightBlueA4007f,
              borderRadius: BorderRadius.circular(
                18.h,
              ),
              border: Border.all(
                color: appTheme.whiteA70001,
                width: 0.35.h,
              ),
              boxShadow: [
                BoxShadow(
                  color: appTheme.black900.withValues(
                    alpha: 0.25,
                  ),
                  spreadRadius: 2.h,
                  blurRadius: 2.h,
                  offset: Offset(
                    0,
                    1.4,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: Text(
              StringResources.strWaist.tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
          Spacer(
            flex: 55,
          ),
          Text(
            StringResources.str99CM.tr,
            style: theme.textTheme.titleSmall,
          ),
          Spacer(
            flex: 44,
          )
        ],
      ),
    );
  }
}
