import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:gather_app/controllers/page_controller.dart';
import 'package:gather_app/screens/authscreens/widgets/other_school.dart';
import 'package:gather_app/widgets/text_widget.dart';
import 'package:provider/provider.dart';
import '../../../utils/colors.dart';
import '../../../widgets/default_button.dart';
import 'login_tab_screen.dart';
import 'student_form_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> with SingleTickerProviderStateMixin {
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
          padding: EdgeInsets.symmetric(horizontal: 35.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Gap(100.h),
              SvgPicture.asset("assets/Gather.svg"),
              Gap(80.h),
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
                  itemBuilder: (context, index) {
                    return _buildCurrentPageContent(index);
                  },
                );
  }

  Widget _buildCurrentPageContent(int index) {
      final page = Provider.of<PageProvider>(context);
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
          onPressed: () => page.selectedSectionIndex == 1 ?  Navigator.push(context, MaterialPageRoute(builder: (context) => const YourSchool())) : page.handleNextButton(),
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
          onPressed: () => page.selectedSectionIndex == 1 ? PageView.builder(itemBuilder: ((context, index) => Column(
            children: [
              const Text("data"),
              DefaultButton(text: "text", onPressed: () => page.handleNextButton())
            ],
          ))) :page.handleNextButton(),
        ),
        const Spacer(),
      ],
    );
      } 
    }
    return const StudentForm();
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
