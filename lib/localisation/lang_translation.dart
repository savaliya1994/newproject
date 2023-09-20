import 'package:get/get.dart';

import 'app_ar.dart';
import 'app_en.dart';
import 'app_hi.dart';

class LangTransaction extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {'en': en, 'hi': hi, 'ar': ar};
}
