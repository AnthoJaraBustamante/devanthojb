import 'package:devanthojb/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  late PageController pageViewCtrl;
  int _currentIndex = 0;

  static ScrollController scrollController = ScrollController();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    pageViewCtrl = PageController(initialPage: _currentIndex);
    setAllFalse();
    changeAbout();
  }

  void setAllFalse() {
    prefs.about = false;
    prefs.works = false;
    prefs.contact = false;
  }

  changeAbout() {
    setAllFalse();
    prefs.about = true;
    if (_currentIndex != 0) {
      _currentIndex = 0;
      pageViewCtrl.animateToPage(0,
          duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    }

    update(<String>['top_info', 'adaptive_page_builder']);
  }

  changeWorks() {
    setAllFalse();
    prefs.works = true;
    if (_currentIndex != 1) {
      _currentIndex = 1;
      pageViewCtrl.animateToPage(1,
          duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    }
    update(<String>['top_info', 'adaptive_page_builder']);
  }

  changeContact() {
    setAllFalse();
    prefs.contact = true;
    if (_currentIndex != 2) {
      _currentIndex = 2;
      pageViewCtrl.animateToPage(2,
          duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    }
    update(<String>['top_info', 'adaptive_page_builder']);
  }
}
