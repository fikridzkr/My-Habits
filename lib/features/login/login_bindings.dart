import 'package:get/instance_manager.dart';
import 'package:my_habits/features/login/controller/login_controller.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}
