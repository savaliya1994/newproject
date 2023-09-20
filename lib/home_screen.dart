import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/languageviewmodel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedlanguage = 'English';
  List language = ['English', 'Hindi', 'Arabic'];
  List locale = [
    Locale('en'),
    Locale('hi'),
    Locale('ar'),
  ];
  final LanguageViewModel languageViewModel = Get.put(LanguageViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: GetBuilder<LanguageViewModel>(
      builder: (controller) {
        ///if we have need of list in that case List make here
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("hello".tr),
              SizedBox(
                height: 15,
              ),
              Text("Name".tr),
              SizedBox(
                height: 30,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     TextButton(
              //         onPressed: () {
              //           Get.updateLocale(Locale('en'));
              //         },
              //         child: Text('English')),
              //     TextButton(
              //         onPressed: () {
              //           Get.updateLocale(Locale('hi'));
              //         },
              //         child: Text('Hindi')),
              //     TextButton(
              //         onPressed: () {
              //           Get.updateLocale(Locale('ar'));
              //         },
              //         child: Text('Arabic')),
              //   ],
              // ),

              SizedBox(
                height: 10,
              ),
              RadioListTile<String>(
                  value: 'English',
                  groupValue: controller.language,
                  onChanged: (val) {
                    controller.updateLanguage(val!);
                  },
                  title: Text('English')),
              Divider(),
              SizedBox(
                height: 10,
              ),
              RadioListTile<String>(
                value: 'Hindi',
                groupValue: controller.language,
                onChanged: (val) {
                  controller.updateLanguage(val!);
                },
                title: Text('Hindi'),
              ),
              Divider(),
              RadioListTile<String>(
                  value: 'Arabic',
                  groupValue: controller.language,
                  onChanged: (val) {
                    controller.updateLanguage(val!);
                  },
                  title: Text('Arabic')),
              Divider(),
            ],
          ),
        );
      },
    ));
  }
}
