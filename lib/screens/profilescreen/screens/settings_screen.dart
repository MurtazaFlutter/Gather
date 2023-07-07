import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../../../utils/colors.dart';
import '../../../widgets/text_widget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w),
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
                      TextWidget(title: "Add Event", size: 16.sp, color: kDefaultColor, weight: FontWeight.w900,),
                      
                  ],
                ),
              ),
              Gap(20.h),
              ListTile(
                leading: const Icon(Icons.dark_mode),
                title: TextWidget(title: "Dark Mode", size: 14.sp, color: kGreyColor,),
                trailing: Switch
                ( value: false, onChanged: (value) {}),
              ),
               ListTile(
                leading: const Icon(Icons.person_2_outlined),
                title: TextWidget(title: "Account", size: 14.sp, color: kGreyColor,),
                trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios))
              ),
               ListTile(
                leading: const Icon(Icons.notifications),
                title: TextWidget(title: "Notifications", size: 14.sp, color: kGreyColor,),
                trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios))
              ),
               ListTile(
                leading: const Icon(Icons.chat_bubble),
                title: TextWidget(title: "Settings", size: 14.sp, color: kGreyColor,),
               trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios))
              ),
               ListTile(
                leading: const Icon(Icons.warning),
                title: TextWidget(title: "About", size: 14.sp, color: kGreyColor,),
                trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios))
              ),
      
          ],
        ),
      ),
    );
  }
}