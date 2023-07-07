import 'package:flutter/material.dart';
import 'package:gather_app/screens/favourite_screen.dart';
import 'package:gather_app/screens/mainscreen/profile_screen.dart';
import 'package:provider/provider.dart';
import '../../controllers/main_screen_notifier.dart';
import '../home_screen.dart';
import '../search_screen.dart';
import 'widgets/bottom_bar.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final List<Widget> pageList = [
    const HomeScreen(),
    const SearchScreen(),
    const FavoritesScreen(),
    const ProfileSceen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
        builder: (context, mainScreenNotifier, child) {
      return Scaffold(
        body: pageList[mainScreenNotifier.pageIndex],
        bottomNavigationBar: const BottomBar(),
      );
    });
  }
}