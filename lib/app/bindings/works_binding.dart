
import 'package:get/get.dart';
import '../controllers/works_controller.dart';


class WorksBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WorksController>(() => WorksController());
  }
}