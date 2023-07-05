import 'package:flutter/material.dart';
import 'package:gather_app/utils/colors.dart';

class TextWidget extends StatelessWidget {
  final String title;
  final FontWeight? weight;
  final Color? color;
  final double size;
   const TextWidget({
    super.key, required this.title,  this.weight = FontWeight.w400,  this.color = kBlackColor, required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Text(title, style: TextStyle(
     fontSize: size, fontWeight: weight,
     color: color,
    ),);
  }
}