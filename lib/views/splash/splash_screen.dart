import 'package:auth_ui_flutter/controllers/splash_controller.dart';

import '../../utils/exports.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
  final splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/auth_logo.png',
          height: Get.height * 0.25,
        ),
      ),
    );
  }
}
