import 'package:get/get.dart';
import 'package:my_habits/features/history/controller/history_controller.dart';
import 'package:my_habits/features/home/controller/home_controller.dart';
import 'package:my_habits/features/main/controller/main_controller.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(), fenix: true);
    Get.lazyPut(() => HistoryController(), fenix: true);
    Get.lazyPut(() => MainController(), fenix: true);
  }
}
