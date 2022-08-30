import 'package:flutter/material.dart';

class Lesson with ChangeNotifier {
  late String id;
  late String title;
  late String? description;
  late ImageProvider img;

  Lesson({
    required this.id,
    required this.title,
    required this.img,
    this.description,
  });

  Lesson.fromJson(Map<String, dynamic> json) {
    id = json['_id'];
    title = json['title'];
    description = json['description'];
    img = const AssetImage("assets/2.jpeg");
  }
}
