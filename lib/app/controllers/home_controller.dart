import 'package:devanthojb/main.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
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
    update(<String>['top_info', 'adaptive_page_builder']);
  }

  changeWorks() {
    setAllFalse();
    prefs.works = true;
    update(<String>['top_info', 'adaptive_page_builder']);
  }

  changeContact() {
    setAllFalse();
    prefs.contact = true;
    update(<String>['top_info', 'adaptive_page_builder']);
  }
}
