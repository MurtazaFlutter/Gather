import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:gather_app/widgets/text_widget.dart';
import '../utils/colors.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/default_button.dart';

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
                    children: const [
                    LoginTab(),
                    SignUp()
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

class SignUp extends StatefulWidget {
  const SignUp({
    super.key,
  });

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
      int _selectedSchoolIndex = -1;

  void _handleSchoolSelection(int index) {
    setState(() {
      _selectedSchoolIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(child: TextWidget(title: 'Select your School',  size: 16.sp)),
        Gap(30.h),
         SelectSchoolBox(
          isSelected: _selectedSchoolIndex == 0,
          onTap: () => _handleSchoolSelection(0),
          schoolTitle: 'Texas A&M University',
        ),
        Gap(15.h),
          SelectSchoolBox(
            onTap: () => _handleSchoolSelection(1) ,
            isSelected: _selectedSchoolIndex == 1,
          schoolTitle: 'Other School',
        ),
        const Spacer(flex: 2,),
        DefaultButton(text: 'Next', onPressed: () {}),
        const Spacer(),
      ],
    );
  }
}

class SelectSchoolBox extends StatelessWidget {
  final String schoolTitle;
  final bool isSelected;
  final VoidCallback onTap;

  const SelectSchoolBox({super.key, 
    required this.schoolTitle,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50.h,
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? kDefaultColor : kBlackColor,
          ),
          borderRadius: BorderRadius.circular(30.r),
          color: isSelected ? kDefaultColor: Colors.transparent,
        ),
        child: Center(
          child: TextWidget(title: schoolTitle, size: 16.sp, color: isSelected ? Colors.white : kBlackColor,),
        ),
      ),
    );
  }
}



class LoginTab extends StatelessWidget {
  const LoginTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}





