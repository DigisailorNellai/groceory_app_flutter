import 'package:get/get.dart';
import 'dart:async';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    navigateToHome();
  }

  void navigateToHome() {
    Timer(Duration(seconds: 3), () {
      Get.toNamed('/Screen2');
    });
  }
}
