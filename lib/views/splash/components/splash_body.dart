import 'package:auth_ui_flutter/utils/exports.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({Key? key}) : super(key: key);

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
