import 'package:ai_measurement/core/utils/string_resources.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/app_export.dart';
import '../../core/network/session/session_helper.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'language_controller/language_controller.dart';

class EditProfileOneScreen extends StatefulWidget {
  EditProfileOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<EditProfileOneScreen> createState() => _EditProfileOneScreenState();
}

class _EditProfileOneScreenState extends State<EditProfileOneScreen> {
  final LanguageController languageController = Get.find();

  // Default value
  final List<Map<String, dynamic>> languages = [
    {"name": "English (US)", "locale": const Locale('en', 'US'), "code": "en"},
    {"name": "Arabic", "locale": const Locale('ar', 'AR'), "code": "ar"},
    {"name": "French", "locale": const Locale('fr', 'FR'), "code": "fr"},
  ];

  late String selectedLanguage = "English (US)";

  @override
  void initState() {
    super.initState();
    _loadSavedLanguage();
  }

  void _loadSavedLanguage() async {
    String? savedLanguage = await SessionHelper().getSelectedLanguage();

    print("Saved Language: $savedLanguage"); // Debugging line

    // Check if savedLanguage matches any code in the list
    if (savedLanguage != null &&
        languages.any((lang) => lang["code"] == savedLanguage)) {
      setState(() {
        // Set the full name based on the saved language code
        selectedLanguage = languages.firstWhere(
          (lang) => lang["code"] == savedLanguage,
        )["name"];
      });

      final selectedLocale = languages.firstWhere(
        (lang) => lang["code"] == savedLanguage,
      )["locale"];

      print("Applied Locale: $selectedLocale"); // Debugging line
      languageController.changeLanguage(selectedLocale);
    } else {
      // Default fallback
      setState(() {
        selectedLanguage = languages.first["name"];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.whiteA700,
      appBar: _buildAppbar(context),
      body: SafeArea(
        top: false,
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 6.h,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              _buildInputone(context),
              Spacer(),
              CustomElevatedButton(
                text: StringResources.strSaveChanges.tr,
                margin: EdgeInsets.symmetric(horizontal: 6.h),
                onPressed: () {
                  onTapSavechanges();
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
        text: StringResources.strLanguage.tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildInputone(BuildContext context) {
    var theme = Theme.of(context);

    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  StringResources.strSelectLanguage.tr,
                  style: theme.textTheme.bodySmall,
                ),
                DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: selectedLanguage,
                    items: languages.map<DropdownMenuItem<String>>((lang) {
                      return DropdownMenuItem<String>(
                        value: lang["name"],
                        child: Text(lang["name"],
                            style: CustomTextStyles.titleSmallSemiBold),
                      );
                    }).toList(),
                    onChanged: (String? newValue) async {
                      setState(() {
                        selectedLanguage = newValue!;
                      });
                    },
                    isExpanded: true,
                    icon: Icon(Icons.keyboard_arrow_down, size: 24),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Navigates to the settingsScreen when the action is triggered.
  onTapImagethirtyfive() {
    Get.back();
  }

  /// Navigates to the settingsScreen when the action is triggered.
  onTapSavechanges() async {
    final selectedLanguageCode = languages.firstWhere(
      (lang) => lang["name"] == selectedLanguage,
    )["code"];

    print("Selected Language Code: $selectedLanguageCode");

    final selectedLocale = languages.firstWhere(
      (lang) => lang["name"] == selectedLanguage,
    )["locale"];

    print("Locale: $selectedLocale");

    languageController.changeLanguage(selectedLocale);

    await SessionHelper().setSelectedLanguage(selectedLanguageCode);

    Get.back();
  }
}
