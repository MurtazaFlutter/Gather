import 'package:flutter/material.dart';

class PageProvider extends ChangeNotifier {

    int _selectedSchoolIndex = -1;
    int _currentPageIndex = 0;

   final PageController _pageController = PageController();

   int  get selectedSchoolIndex => _selectedSchoolIndex;
   int get currentPageIndex => _currentPageIndex;
    get pageController => _pageController;

    handleSection(int index) {
    _selectedSchoolIndex = index;
    notifyListeners();

   
   }

     handleNextButton() {
    if (_selectedSchoolIndex == 0) {

      _currentPageIndex ++;
     
      _pageController.animateToPage(
        _currentPageIndex,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
    }
    notifyListeners();
  }

}