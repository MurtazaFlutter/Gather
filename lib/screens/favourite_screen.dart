import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:gather_app/utils/colors.dart';
import 'package:gather_app/widgets/text_widget.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> with SingleTickerProviderStateMixin {
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(40.h),
            Center(
              child: SvgPicture.asset(
                "assets/Gather.svg",
                height: 40.h,
                width: 120.w,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Gap(30.h),
                     TextWidget(
                      title: 'Favorites',
                      size: 24.sp,
                      weight: FontWeight.w700,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.55,
                      child: TabBar(
                        dividerColor: Colors.transparent,
                        controller: _tabController,
                        indicatorPadding: EdgeInsets.only(right: 60.w,),
                        labelPadding: EdgeInsets.zero,
                        tabs: [
                          Tab(
                            child: Container(
                             // padding: const EdgeInsets.symmetric(horizontal: 10),
                              alignment: Alignment.bottomLeft,
                              child: TextWidget(title: "Events", size: 16.sp, weight: FontWeight.w700,)
                            ),
                          ),
                          Tab(
                            child: Container(
                              //padding: const EdgeInsets.symmetric(horizontal: 10),
                              alignment: Alignment.bottomLeft,
                              child: TextWidget(title: "Organizations",size: 16.sp, weight: FontWeight.w700,)
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children:  [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Gap(20.h),
                              TextWidget(title: "Tuesday, June 6", size: 16.sp, weight: FontWeight.w700,),
                              Row(
                               mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/event.png", width: 130.w, height: 130.h,),
                                  
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      TextWidget(title: "Tuesday, June 6", size: 14.sp, weight: FontWeight.w700, color: kDefaultColor, ),
                                      TextWidget(title: "Walk to End Alzheimers", size: 16.sp, weight: FontWeight.w700,),
                                      TextWidget(title: "MSC West Side", size: 14.sp, weight: FontWeight.w700, color: const Color(0xff929292),),
                                        
                                    ],
                                  )

                                ],
                              )
                            ],
                          ),
                           Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Gap(40.h),
                              Row(
                               mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/event.png", width: 130.w, height: 130.h,),
                                  
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                       TextWidget(title: "Social", size: 14.sp, weight: FontWeight.w700, color: kDefaultColor, ),
                                        TextWidget(title: "TAMU Organization #1", size: 16.sp, weight: FontWeight.w700,),
                                        TextWidget(title: "5 Events this week", size: 14.sp, weight: FontWeight.w700, color: const Color(0xff929292),),
                                        
                                    ],
                                  )

                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
