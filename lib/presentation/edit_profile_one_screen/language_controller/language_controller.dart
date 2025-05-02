import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageController extends GetxController {
  var selectedLocale = const Locale('en', 'US').obs;

  void changeLanguage(Locale locale) {
    selectedLocale.value = locale;
    Get.updateLocale(locale);
  }
}
