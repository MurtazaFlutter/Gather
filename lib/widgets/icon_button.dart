import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';

class IconButtonWidget extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  const IconButtonWidget({
    super.key, required this.icon, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap, icon: Icon(icon, size: 24.h, color: kBlackColor,));
  }
}