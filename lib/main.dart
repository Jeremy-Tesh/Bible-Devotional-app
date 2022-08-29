import 'package:flutter/material.dart';
import 'package:yehiwot_kal/global_variables.dart';
import 'package:yehiwot_kal/home.dart';
import 'package:yehiwot_kal/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Yehiwot  Kal',
        theme: ThemeData(
            scaffoldBackgroundColor: GlobalVariables.backgroundColor,
            appBarTheme: AppBarTheme(
                elevation: 0, iconTheme: IconThemeData(color: Colors.black))),
        home: Home());
  }
}
