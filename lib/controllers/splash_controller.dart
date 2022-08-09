import 'dart:async';

import '../utils/exports.dart';

class SplashController extends GetxController {
  _splashDuration() {
    Timer(const Duration(seconds: 4), () {
      //TODO goto onboarding screen / login / home
      Get.off(() => const LoginScreen());
    });
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _splashDuration();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    _splashDuration();
  }
}
