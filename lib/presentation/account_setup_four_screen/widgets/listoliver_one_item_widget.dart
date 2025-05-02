import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/app_export.dart';
import '../../../core/utils/string_resources.dart';
import '../get_profiles_model/get_profiles_response.dart';

class ListoliverOneItemWidget extends StatelessWidget {
  final GetProfilesResponse profile;
  final bool isSelected;
  final VoidCallback onTap;
  final VoidCallback onDelete;

  const ListoliverOneItemWidget(
      {Key? key,
      required this.profile,
      required this.isSelected,
      required this.onTap,
      required this.onDelete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Trigger the onTap callback
      child: Row(
        children: [
          Expanded(
            flex: 10,
            child: Container(
              width: double.maxFinite,
              decoration: isSelected ? AppDecoration.outlineBlack : null,
              child: Column(
                children: [
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.h,
                      vertical: 6.h,
                    ),
                    decoration: AppDecoration.fillOnPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder4,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Profile image
                        Container(
                          margin: EdgeInsets.only(left: 14.h),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(18.h),
                            child: Image.asset(
                              ImageConstant.imgEllipse143938x38,
                              height: 38.h,
                              width: 38.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        // Name
                        Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text(
                            profile.name ?? StringResources.strOliver.tr,
                            style: theme.textTheme.titleSmall,
                          ),
                        ),

                        Spacer(),

                        if (isSelected)
                          Padding(
                            padding: EdgeInsets.only(left: 10.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgImage14,
                              height: 24.h,
                              width: 26.h,
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child:
                  GestureDetector(onTap: onDelete, child: Icon(Icons.delete))),
        ],
      ),
    );
  }
}
