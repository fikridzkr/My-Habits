import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:my_habits/core/model/user_model.dart';

class HomeController extends GetxController {
  final User? user = FirebaseAuth.instance.currentUser;
  final _fireStore = FirebaseFirestore.instance;
  final loggedInUser = UserModel(name: 'User').obs;

  final DatePickerController datePickerController = DatePickerController();
  DateTime selectedDateValue = DateTime.now();

  final List<Data> data = [
    const Data(true, 'Makan'),
    const Data(false, 'Minum'),
  ];

  void handleCheck(bool? value) {
    print(value);
  }

  @override
  void onInit() {
    if (user == null) {
      Get.offNamed('/main');
    }
    _fireStore.collection("users").doc(user!.uid).get().then((value) {
      loggedInUser.value = UserModel.fromJson(value.data()!);
    });
    super.onInit();
  }
}

class Data {
  final bool check;
  final String name;

  const Data(this.check, this.name);
}
