import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:gather_app/utils/colors.dart';
import 'package:gather_app/widgets/custom_text_field.dart';
import 'package:gather_app/widgets/text_widget.dart';
import '../../../widgets/icon_button.dart';

class PostDetailScreen extends StatelessWidget {
  const PostDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlueColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Container(
                  height: 550.h,
                  decoration: BoxDecoration(
                    color: const Color(0x7fe5e5e5),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.r),
                      bottomRight: Radius.circular(20.r),
                    ),
                  ),
                ),
                Image.asset("assets/detail.png"),
                Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButtonWidget(
                        onTap: () {},
                        icon: Icons.arrow_back_ios,
                      ),
                      IconButtonWidget(
                        onTap: () {},
                        icon: Icons.more_vert,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 390.h, left: 20.w, right: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("assets/LOGO 1.png"),
                          Column(
                            children: [
                              TextWidget(title: "Happy Summer", size: 20.sp, weight: FontWeight.w700, color: Colors.white,),
                              TextWidget(title: "H2024aggies", size: 16.sp, color: Colors.white,),
                            ],
                          ),
                           Row(
                            children: [
                              Icon(Icons.chat_bubble, color: Colors.white, size: 13.h,),
                              Gap(5.w),
                              TextWidget(title: "125", size: 16.sp, color: Colors.white, weight: FontWeight.w900,),
                              
                            ],
                          )
                        ],
                      ),
                      TextWidget(
                        title:
                            "non risus pharetra cursus. Sed a tortor a neque ullamcorper aliquet vitae eget neque. Sed ac quam quam. Proin ut turpis auctor.",
                        size: 16.sp,
                        color: Colors.white,
                      ),
                      Gap(10.h),
                      Center(child: TextWidget(title: "125 Comments", size: 16.sp, color: Colors.white,)),
                    ],
                  ),
                ),
              ],
            ),
            Gap(10.h),
            ListTile(
              leading: Image.asset("assets/profile.png"),
              title: TextWidget(
                title: "Joaquin S",
                size: 12.sp,
                color: Colors.white,
              ),
              subtitle: TextWidget(
                title: "Whoop!",
                size: 16.sp,
                color: Colors.white,
              ),
            ),
            const Divider(),
            ListTile(
              leading: Image.asset("assets/profile.png"),
              title: TextWidget(
                title: "Joaquin S",
                size: 12.sp,
                color: Colors.white,
              ),
              subtitle: TextWidget(
                title: "Whoop!",
                size: 16.sp,
                color: Colors.white,
              ),
            ),
            const Divider(),
            Gap(30.h),
            Padding(
              padding: EdgeInsets.only(left: 10.w, right: 10.w),
              child: const CustomTextField(hintText: "Add comment..."),
            ),
             Gap(20.h),
          ],
        ),
      ),
    );
  }
}


