import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'controller/Getstoragrservice.dart';
import 'home_screen.dart';
import 'localisation/lang_translation.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final String SelectedLang = GetStorageServices.getLanguage() == null
      ? ''
      : GetStorageServices.getLanguage();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // localizationsDelegates: [
      //   AppLocalizations.delegate,
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate`
      // ],
      translations: LangTransaction(),
      locale: SelectedLang.isEmpty || SelectedLang == ''
          ? Locale('en')
          : Locale(SelectedLang),
//fallbackLocale:Locale('en') ,
      // locale: Locale('hi'),
      // supportedLocales: [Locale('en'), Locale('hi')],
      home: HomeScreen(),
    );
  }
}
