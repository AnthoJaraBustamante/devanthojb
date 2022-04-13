
import 'package:get/get.dart';
import '../controllers/about_controller.dart';


class AboutBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AboutController>(() => AboutController());
  }
}