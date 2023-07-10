import '../../../widgets/search_text_field.dart';
import '../../../utils/imports.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(50.h),
              const SearchTextField(),
              Gap(20.h),
              TextWidget(title: "Trending Posts", size: 18.sp, weight: FontWeight.w500,),
              SizedBox(
                height: 160.h,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  
                  shrinkWrap: true,
                  itemCount: 14,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                  return Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.zero,
              decoration:     BoxDecoration(
          borderRadius: BorderRadius.circular(15), 
          color: const Color(0x7fd4d4d4)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Image.asset("assets/imagepost.png", height: 160.h, width: 130.w,),
                      ),
                    ],
                  );
                
                })),
              ),
                     TextWidget(title: "Organizations", size: 18.sp, weight: FontWeight.w500,),
             
                   SizedBox(
                height: 160.h,
                     child: ListView.builder(
                       padding: EdgeInsets.zero,
                       shrinkWrap: true,
                       itemCount: 14,
                       scrollDirection: Axis.horizontal,
                       itemBuilder: ((context, index) {
                       return Stack(
                         children: [
                           Container(
                             padding: EdgeInsets.zero,
                               decoration:     BoxDecoration(
                           borderRadius: BorderRadius.circular(15.r), 
                           color: const Color(0x7fd4d4d4)),
                           ),
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Image.asset("assets/imagepost.png", height: 160.h, width: 130.w,),
                            ),
                         ],
                       );
                     
                     })),
                   ),
                          TextWidget(title: "Happening Today", size: 18.sp, weight: FontWeight.w500,),
          
                  SizedBox(
                height: 160.h,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: 14,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                  return Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.zero,
              decoration:     BoxDecoration(
          borderRadius: BorderRadius.circular(15), 
          color: const Color(0x7fd4d4d4)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Image.asset("assets/imagepost.png", height: 160.h, width: 130.w,),
                      ),
                    ],
                  );
                
                })),
              ),
        
            ],
          ),
        ),
      )
    );
  }
}
