import 'package:flutter/material.dart';

import 'models/app_const_model.dart';
import 'models/text_theme_model.dart';
import 'views/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant App Flutter',
      theme: ThemeData(
        primaryColor: AppConst.primary,
        backgroundColor: AppConst.background,
        textTheme: appTextTheme,
      ),
      home: const HomeScreen(),
    );
  }
}
