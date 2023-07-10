import '../widgets/search_text_field.dart';
import '../utils/imports.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(50.h),
            const SearchTextField(),
            Gap(20.h),
            TextWidget(title: "Trending Posts", size: 18.sp, weight: FontWeight.w500,),
            Gap(15.h),
            const Text("data"),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                return Image.asset("assets/post.png");
              })),
            ),
            //  Gap(20.h),
            // TextWidget(title: "Organizations", size: 18.sp, weight: FontWeight.w500,),
            // Gap(15.h),
            // Expanded(
            //   child: ListView.builder(
            //     scrollDirection: Axis.horizontal,
            //     itemBuilder: ((context, index) {
            //     return Image.asset("assets/,post.png");
            //   })),
            // ),
            //  Gap(20.h),
            // TextWidget(title: "Happening Today", size: 18.sp, weight: FontWeight.w500,),
            // Gap(15.h),
            // Expanded(
            //   child: ListView.builder(
            //     scrollDirection: Axis.horizontal,
            //     itemBuilder: ((context, index) {
            //     return Image.asset("assets/,post.png");
            //   })),
            // ),
      
          ],
        ),
      )
    );
  }
}
