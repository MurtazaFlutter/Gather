import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/colors.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  // bool? obSecure;

  const CustomTextField({
    super.key, required this.hintText, 
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: TextFormField(
        obscureText: false,
        style: TextStyle(
                color: kBlackColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle:TextStyle(
                color: kBlackColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
              focusedBorder:OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.r)
              ) ,
              border:  OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.r)
              )
        ),
    
      ),
    );
  }
}
