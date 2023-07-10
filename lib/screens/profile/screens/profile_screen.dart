import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:gather_app/screens/profile/screens/settings_screen.dart';
import 'package:gather_app/utils/colors.dart';
import 'package:gather_app/widgets/text_widget.dart';

class ProfileSceen extends StatelessWidget {
  const ProfileSceen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            Gap(50.h),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/profile.png'),
                          Column(
                            children: [
                              TextWidget(title: "Saul Goodman", size: 16.sp),
                              TextWidget(title: "@saul.goodman", size: 13.sp, color: kGreyColor,),
                            ],
                          )
                        ],
                      ),
                     IconButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: ((context) => const SettingsScreen())));
                     }, icon: const Icon(Icons.settings))
                    ],
                  ),
                Row(
                  children: [
                    Column(
                      children: [
                        TextWidget(title: "2", size: 16.sp, color: kDefaultColor,),
                        TextWidget(title: "Organization", size: 16.sp, color: kDefaultColor,),
                      ],
                    ),
                    const Expanded(child: VerticalDivider()),
                    TextWidget(title: "Add Event", size: 16.sp, color: kDefaultColor, weight: FontWeight.w900,),
                    const Expanded(child: VerticalDivider(
                      color: Colors.black,
                    )),
                     Column(
                      children: [
                        TextWidget(title: "4", size: 16.sp, color: kDefaultColor,),
                        TextWidget(title: "Posts", size: 16.sp, color: kDefaultColor,),
                      ],
                    ),

                  ],
                )
                ],
              ),
            )
      
          ],
        ),
      )
    );
  }
}