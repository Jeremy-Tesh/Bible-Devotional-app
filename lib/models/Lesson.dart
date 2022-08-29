import 'package:flutter/material.dart';

class Lesson with ChangeNotifier {
  final String id;
  final String title;
  ImageProvider img;

  Lesson({
    required this.id,
    required this.title,
    required this.img,
  });
}
