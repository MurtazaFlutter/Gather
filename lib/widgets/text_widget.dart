import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String title;
  final FontWeight weight;
  final Color color;
  final double size;
  const TextWidget({
    super.key, required this.title, required this.weight, required this.color, required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Text(title, style: TextStyle(
     fontSize: size, fontWeight: weight,
     color: color,
    ),);
  }
}