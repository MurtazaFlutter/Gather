import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:gather_app/widgets/text_widget.dart';
import '../utils/colors.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(50.h),
            const SearchTextField(),
            Gap(20.h),
            TextWidget(title: "Trending Posts", size: 18.sp, weight: FontWeight.w500,),
            Gap(15.h),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                return Image.asset("assets/,post.png");
              })),
            ),
             Gap(20.h),
            TextWidget(title: "Organizations", size: 18.sp, weight: FontWeight.w500,),
            Gap(15.h),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                return Image.asset("assets/,post.png");
              })),
            ),
             Gap(20.h),
            TextWidget(title: "Happening Today", size: 18.sp, weight: FontWeight.w500,),
            Gap(15.h),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                return Image.asset("assets/,post.png");
              })),
            ),
      
          ],
        ),
      )
    );
  }
}

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