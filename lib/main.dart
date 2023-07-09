import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gather_app/controllers/main_screen_notifier.dart';
import 'package:gather_app/controllers/page_controller.dart';
import 'package:gather_app/screens/authscreens/screens/auth_screen.dart';
import 'package:gather_app/utils/colors.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: ((context) => PageProvider())),
      ChangeNotifierProvider(create: ((context) => MainScreenNotifier())),
    ],
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Gather App',
          theme: ThemeData(
            applyElevationOverlayColor:true ,
           checkboxTheme: const CheckboxThemeData(),
            scaffoldBackgroundColor: kScaffoldColor,
            colorScheme: ColorScheme.fromSeed(seedColor: kDefaultColor),
            useMaterial3: true,
          ),
          home: const AuthScreen(),
          
        );
      }
    );
  }
}
