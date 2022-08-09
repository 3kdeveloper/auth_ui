import 'package:auth_ui_flutter/utils/exports.dart';

class ForgotScreen extends StatelessWidget {
  const ForgotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const AuthHeader(
                imagePath: 'assets/images/forgot.png',
                text: 'Forgot',
              ),
              SizedBox(height: Get.height * 0.06),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width * 0.04),
                child: Column(
                  children: [
                    const CustomTextField(
                      hintText: 'please enter your email',
                      keyboardType: TextInputType.emailAddress,
                      prefixIcon: Icons.email_outlined,
                    ),
                    SizedBox(height: Get.height * 0.08),
                    CustomButton(
                      btnText: 'Forgot Password',
                      onTap: () {},
                    ),

                    //todo cover here all space
                    SizedBox(height: Get.height * 0.02),
                    AuthFooter(
                      text: 'Goto',
                      btnText: 'Login',
                      onPressed: () {
                        Get.to(() => const LoginScreen());
                      },
                    ),
                    SizedBox(height: Get.height * 0.02),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
