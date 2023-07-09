import 'package:flutter/material.dart';

class PageProvider extends ChangeNotifier {

    int _selectedSectionIndex = -1;
    int _currentPageIndex = 0;

   final PageController _pageController = PageController();

   int  get selectedSectionIndex => _selectedSectionIndex;
   int get currentPageIndex => _currentPageIndex;
    get pageController => _pageController;

    handleSection(int index) {
    _selectedSectionIndex = index;
    notifyListeners();
   }

//    handleNextButton() {
//   if (_currentPageIndex == 0 && _selectedSectionIndex == 0) {
//     _currentPageIndex++;
//     _pageController.animateToPage(
//       _currentPageIndex,
//       duration: const Duration(milliseconds: 300),
//       curve: Curves.easeInOut,
//     );
//   }
//   notifyListeners();
// }

// handleNextButton() {
//   if (_currentPageIndex == 0 && _selectedSectionIndex == 0) {
//     _currentPageIndex++;
//     _pageController.animateToPage(
//       _currentPageIndex,
//       duration: const Duration(milliseconds: 300),
//       curve: Curves.easeInOut,
//     );
//   } else if (_currentPageIndex == 1) {
//     // Handle the logic for the second page next button click
//     _currentPageIndex++;
//     _pageController.animateToPage(
//       _currentPageIndex,
//       duration: const Duration(milliseconds: 300),
//       curve: Curves.easeInOut,
//     );
//   } else {
//     // Handle the logic for the last page next button click
//   }
//   notifyListeners();
// }



    handleNextButton() {
    if (_selectedSectionIndex == 0) {

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