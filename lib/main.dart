import 'package:provider/provider.dart';
import 'controllers/main_screen_notifier.dart';
import 'controllers/page_controller.dart';
import 'utils/imports.dart';

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
          home: const SearchScreen(),
          
        );
      }
    );
  }
}