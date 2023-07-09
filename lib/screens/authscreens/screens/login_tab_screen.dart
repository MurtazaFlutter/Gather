import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import '../../../utils/colors.dart';
import '../../../widgets/custom_text_field.dart';
import '../../../widgets/default_button.dart';
import '../../../widgets/text_widget.dart';
import '../../mainscreen/main_screen.dart';

class LoginTab extends StatelessWidget {
  const LoginTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Gap(30.h),
          const CustomTextField(
            hintText: 'Email Address',
          ),
          Gap(15.h),
          const CustomTextField(
            hintText: 'Password',
          ),
          Gap(35.h),
          DefaultButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) => MainScreen())));
            },
            text: 'LOGIN',
          ),
          Gap(15.h),
          Center(child: TextWidget(title: 'Forgot Password?', weight: FontWeight.w400, color: kDefaultColor, size: 14.sp)),
          Gap(35.h),
          SvgPicture.asset('assets/social login.svg'),
          Gap(25.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextWidget(title: 'Don\'t have an account? ', weight: FontWeight.w400, color: const Color(0xff1D1D28), size: 12.sp),
               TextWidget(title: 'Create one now!', weight: FontWeight.w400, color: kDefaultColor, size: 12.sp),
            ],
          )
        ],
      ),
    );
  }
}