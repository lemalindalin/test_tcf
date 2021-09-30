import 'package:flutter/material.dart';

import 'home_page.dart';
import 'colors.dart' as color;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 30,
              color: color.AppColors.homePageTitle,
              fontWeight: FontWeight.w700),
          bodyText1: TextStyle(
              fontSize: 20,
              color: color.AppColors.homePageTitle,
              fontWeight: FontWeight.w400),
        ),
      ),
      home: const MyHomePage(title: 'Demo App'),
    );
  }
}


