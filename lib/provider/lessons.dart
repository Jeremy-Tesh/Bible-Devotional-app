import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:yehiwot_kal/models/Lesson.dart';

class Lessons with ChangeNotifier {
  List<Lesson> _lessons = [
    Lesson(id: "1", title: "አስተውል", img: AssetImage("asset/a1.jpeg")),
    Lesson(id: "1", title: "ይቅር በሉ", img: AssetImage("assets/2.jpeg"))
  ];
  List<Lesson> get lessons {
    return [..._lessons];
  }
}
