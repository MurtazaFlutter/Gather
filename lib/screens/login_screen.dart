import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:gather_app/controllers/page_controller.dart';
import 'package:gather_app/widgets/text_widget.dart';
import 'package:provider/provider.dart';
import '../utils/colors.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/default_button.dart';
import 'mainscreen/main_screen.dart';

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
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 35.w, vertical: 120.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/Gather.svg"),
              Gap(100.h),
              TabBar(
                dividerColor: Colors.transparent,
                indicatorColor: kDefaultColor,
                controller: _tabController,
                tabs: [
                  Tab(
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
                  Tab(
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

  @override
  Widget build(BuildContext context) {
    final page = Provider.of<PageProvider>(context);
    return PageView.builder(
                  controller: page.pageController,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return _buildCurrentPageContent(index);
                  },
                );
  }

  Widget _buildCurrentPageContent(int index) {
      final page = Provider.of<PageProvider>(context);
    // Build the content for each page based on the index
    if (index == page.currentPageIndex) {
      if (index == 0) {
        return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(child: TextWidget(title: 'Select your School', size: 16.sp)),
        Gap(30.h),
        SelectSchoolBox(
          isSelected: page.selectedSectionIndex == 0,
          onTap: () => page.handleSection(0),
          schoolTitle: 'Texas A&M University',
        ),
        Gap(15.h),
        SelectSchoolBox(
          onTap: () => page.handleSection(1),
          isSelected: page.selectedSectionIndex == 1,
          schoolTitle: 'Other School',
        ),
        const Spacer(flex: 2,),
        DefaultButton(
          text: 'Next',
          onPressed: () => page.handleNextButton(),
        ),
        const Spacer(),
      ],
    );
      } else if (index == 1) {
        return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(child: TextWidget(title: 'Student or an Organization', size: 16.sp)),
        Gap(30.h),
        SelectSchoolBox(
          isSelected: page.selectedSectionIndex == 0,
          onTap: () => page.handleSection(0),
          schoolTitle: 'Student',
        ),
        Gap(15.h),
        SelectSchoolBox(
          onTap: () => page.handleSection(1),
          isSelected: page.selectedSectionIndex == 1,
          schoolTitle: 'Organization',
        ),
        const Spacer(flex: 2,),
        DefaultButton(
          text: 'Next',
          onPressed: () => page.handleNextButton(),
        ),
        const Spacer(),
      ],
    );
      } else {
      return  const Text("data");
       // return const StudentForm();
       // return Text('Additional Page ${index + 1}');
      }
    } else {
      return const SizedBox();
    }
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


class StudentForm extends StatelessWidget {
  const StudentForm({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(child: TextWidget(title: "Hi there!", size: 16.sp)),
        Gap(20.h),
        const CustomTextField(hintText: "Username"),
        Gap(8.h),
        const CustomTextField(hintText: "Name"),
        Gap(8.h),
        const CustomTextField(hintText: "Email Address"),
        Gap(8.h),
        const CustomTextField(hintText: "Password"),
        Gap(8.h),
        const CustomTextField(hintText: "Confirm Password"),
        Gap(8.h),
         const CustomTextField(hintText: "Major"),
        Gap(8.h),
        Gap(25.h),
        DefaultButton(text: "Welcome to Gather!", onPressed: () {}),
        Gap(10.h),
         Center(
           child: Text.rich(TextSpan(
            children: [
               TextSpan(
                text: 'By signing up, you are agree with our ',
                 style: TextStyle(
                  fontSize: 12.sp,
                 
                )
              ),
              TextSpan(
                text: 'Terms & Conditions',
                style: TextStyle(
                  fontSize: 12.sp,
                   decoration: TextDecoration.underline,
                  color: kDefaultColor,
                  
                )
              ),
            ]
                 )),
         )
      ],
    );
  }
}