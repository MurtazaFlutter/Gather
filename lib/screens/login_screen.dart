import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:gather_app/widgets/text_widget.dart';
import '../utils/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 35.w, vertical: 53.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/Gather.svg"),
                 Gap(68.h),
                TabBar(
                  indicatorColor: kDefaultColor,
                  controller: _tabController,
                  tabs: [
                    SizedBox(
                      width: 130.w,
                      child: Tab(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: const Color(0xff1D2226),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 130.w,
                      child: Tab(
                        
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Signup',
                            style: TextStyle(
                              color: const Color(0xff1D2226),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              Gap(20.h),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
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
                    
                      // Add your signup content here
                      Container(
                        color: Colors.green,
                        child: const Center(
                          child: Text('Signup'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

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

class CustomTextField extends StatelessWidget {
  final String hintText;
  // bool? obSecure;

  const CustomTextField({
    super.key, required this.hintText, 
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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

    );
  }
}



