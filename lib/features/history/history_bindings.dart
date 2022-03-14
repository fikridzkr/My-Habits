import 'package:get/get.dart';
import 'package:my_habits/features/history/controller/history_controller.dart';

class HistoryBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HistoryController(), fenix: true);
  }
}
