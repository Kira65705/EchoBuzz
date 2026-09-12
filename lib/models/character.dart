import 'package:flutter/material.dart';

class Character {
  const Character({
    required this.id,
    required this.name,
    required this.handle,
    required this.author,
    required this.description,
    required this.intro,
    required this.chatCountLabel,
    required this.coverColors,
    this.category = 'Category',
  });

  final String id;
  final String name;
  final String handle;
  final String author;
  final String description;
  final String intro;
  final String chatCountLabel;
  final List<Color> coverColors;
  final String category;
}
