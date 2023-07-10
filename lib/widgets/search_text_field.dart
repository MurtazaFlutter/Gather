import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/colors.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44.h,
      decoration:  BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.r)
      ),
      child: TextFormField(
        obscureText: false,
        style: TextStyle(
        color: kBlackColor,
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
      ),
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          border: InputBorder.none,
          hintText: "Search",
          hintStyle:TextStyle(
        color: kBlackColor,
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
      ),
    
      )));
    
  }
}