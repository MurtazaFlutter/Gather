import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
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
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(40.h),
            Image.asset("assets/LOGO 1.png"),
            TabBar(
              dividerColor: Colors.transparent,
              labelColor: Colors.black,
              labelStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              controller: _tabController,
              tabs: const [
                Tab(text: 'Involved'),
                Tab(text: 'Community'),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  Center(child: Text('Involved Content')),
                  Center(child: Text('Community Content')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
