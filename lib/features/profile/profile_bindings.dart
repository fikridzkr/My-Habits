import 'package:get/get.dart';

class ProfileBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileBinding(), fenix: true);
  }
}
