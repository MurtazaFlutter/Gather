import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:gather_app/widgets/text_widget.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(40.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Image.asset("assets/LOGO 1.png"),
          ),
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
              children:  const [
              InvolvedPosts(),
              InvolvedPosts(),
               
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class InvolvedPosts extends StatelessWidget {
  const InvolvedPosts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListView.builder(
       physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: ((context, index) {
        return Column(
           mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Gap(30.h),
             Image.asset("assets/imagepost.png", width: 375, ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/Group 6.png", height: 44.h, width: 44.w,),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(title: 'Happy Summer', size: 12.sp),
                        TextWidget(title: 'Happy Summer', size: 12.sp),
                        
                      ],
                    ),
                    const Icon(Icons.more_vert),
                  ],
                ),
                const Icon(Icons.chat),
                const Text("22")
              ],
            ),
          ],
        );
      })),
    );
  }
}
