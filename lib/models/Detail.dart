import 'package:flutter/material.dart';

class Detail with ChangeNotifier {
  final String id;
  final String title;
  ImageProvider img;
  final String date;
  final String description;

  Detail({
    required this.id,
    required this.title,
    required this.img,
    required this.date,
    required this.description,
  });
}
