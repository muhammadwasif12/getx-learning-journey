import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearning/screens/home_screen.dart';
import 'package:getxlearning/screens/screen_five_fav.dart';
import 'package:getxlearning/screens/screen_four.dart';
import 'package:getxlearning/translation/languages.dart';
import 'package:getxlearning/screens/screen_three.dart';
import 'package:getxlearning/screens/screen_two.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: languages(),
      locale: Locale("en",'US'),
      fallbackLocale: Locale("en",'US'),
      home: HomeScreen(),
      theme: ThemeData(primarySwatch: Colors.amber),
      getPages: [
        GetPage(name: '/', page: () => HomeScreen()),
        GetPage(name: '/ScreenTwo', page: () => ScreenTwo()),
        GetPage(name: '/ScreenThree', page: () => ScreenThree()),
        GetPage(name: '/ScreenFour', page: () => ScreenFour()),
        GetPage(name: '/ScreenFive', page: () => ScreenFiveFav()),
      ],
    );
  }
}
