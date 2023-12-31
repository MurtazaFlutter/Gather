import '../../../utils/imports.dart';

class StudentForm extends StatelessWidget {
  final VoidCallback onPressed;
  const StudentForm({super.key, required this.onPressed});

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
        DefaultButton(text: "Welcome to Gather!", onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: ((context) => MainScreen())));
        }),
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
         ),
         Gap(50.h)
      ],
    );
  }
}