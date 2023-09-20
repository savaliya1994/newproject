import 'package:get_storage/get_storage.dart';

class GetStorageServices {
  static GetStorage getstorage = GetStorage();

  /// Set Language :

  static setlanguage(String language) {
    getstorage.write('language', language);
  }

  static getLanguage() {
    return getstorage.read('language');
  }
}


