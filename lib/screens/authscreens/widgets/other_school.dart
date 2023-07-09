import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:gather_app/screens/mainscreen/main_screen.dart';
import 'package:gather_app/widgets/custom_text_field.dart';
import 'package:gather_app/widgets/default_button.dart';
import 'package:gather_app/widgets/text_widget.dart';
import '../../../utils/consts.dart';

class YourSchool extends StatelessWidget {
  const YourSchool({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 50.h),
        child:   Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SvgPicture.asset("assets/Gather.svg"),
           Gap(60.h),
            Center(child: TextWidget(title: yourSchoolText, size: 16.sp, align: TextAlign.center,)),
            Gap(20.h),
            const CustomTextField(hintText: 'Your School'),
            const Spacer(),
            DefaultButton(text: 'Finish', onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) => MainScreen())));
            }),
            const Spacer()
      
          ],
        ),
        ),
      ),
    );
  }
}