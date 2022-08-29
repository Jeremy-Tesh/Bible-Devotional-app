import 'package:flutter/material.dart';
import 'package:yehiwot_kal/daily.dart';
import 'package:yehiwot_kal/global_variables.dart';
import 'package:yehiwot_kal/home.dart';
import 'package:yehiwot_kal/detail_description.dart';
import 'package:provider/provider.dart';
import 'package:yehiwot_kal/provider/details.dart';
import 'package:yehiwot_kal/provider/lessons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => Lessons()),
        ChangeNotifierProvider(create: (ctx) => Details()),
      ],
      child: MaterialApp(
          title: 'Yehiwot  Kal',
          theme: ThemeData(
              scaffoldBackgroundColor: GlobalVariables.backgroundColor,
              appBarTheme: AppBarTheme(
                  elevation: 0,
                  iconTheme: IconThemeData(color: Colors.white),
                  backgroundColor: Colors.transparent)),
          home: Home()),
    );
  }
}
