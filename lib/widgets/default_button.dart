import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/colors.dart';
import 'text_widget.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const DefaultButton({
    super.key, required this.text, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
     fixedSize: Size.fromHeight(50.h),
    backgroundColor: kDefaultColor ),
      onPressed: onPressed, child: TextWidget(title: text, weight: FontWeight.w400, color: Colors.white, size: 16.sp));
  }
}