import 'package:get/get.dart';
import 'package:my_habits/features/register/controller/register_controller.dart';

class RegisterBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterController(), fenix: true);
  }
}
