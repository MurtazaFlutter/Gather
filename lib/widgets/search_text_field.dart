import '../utils/imports.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44.h,
      decoration:  BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r)
      ),
      child: TextFormField(
        obscureText: false,
        style: TextStyle(
        color: kBlackColor,
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
      ),
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          border: InputBorder.none,
          hintText: "Search",
          hintStyle:TextStyle(
        color: kBlackColor,
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
      ),
    
      )));
    
  }
}