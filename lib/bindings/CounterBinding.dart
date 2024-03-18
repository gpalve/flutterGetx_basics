import 'package:first_getx_app/controllers/counterController.dart';
import 'package:get/get.dart';

class CounterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CounterController());
  }
}