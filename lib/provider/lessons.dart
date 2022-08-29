// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:yehiwot_kal/models/Lesson.dart';

class Lessons with ChangeNotifier {
  List<Lesson> _lessons = [
    Lesson(id: "1", title: "አስተውል", img: AssetImage("assets/a1.jpeg")),
    Lesson(id: "2", title: "ይቅር በሉ", img: AssetImage("assets/2.jpeg")),
    Lesson(id: "3", title: "በጌታ መደሰት", img: AssetImage("assets/c1.jpeg")),
  ];
  List<Lesson> get lessons {
    return [..._lessons];
  }
}
