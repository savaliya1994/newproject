import 'dart:ui';

import 'package:get/get.dart';

import 'Getstoragrservice.dart';

class LanguageViewModel extends GetxController {
  String language = GetStorageServices.getLanguage() == 'en'
      ? 'English'
      : GetStorageServices.getLanguage() == 'hi'
          ? 'Hindi'
          : GetStorageServices.getLanguage() == 'ar'
              ? 'Arabic'
              : 'English';

  updateLanguage(String val) {
    language = val;
    if (val == "Arabic") {
      GetStorageServices.setlanguage('ar');
      Get.updateLocale(Locale('ar'));
    } else if (val == "Hindi") {
      GetStorageServices.setlanguage('hi');
      Get.updateLocale(Locale('hi'));
    } else {
      GetStorageServices.setlanguage('en');
      Get.updateLocale(Locale('en'));
    }
    update();
  }
}
