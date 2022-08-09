import 'package:auth_ui_flutter/utils/exports.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: Get.height,
          child: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                const AuthHeader(
                  imagePath: 'assets/images/login.png',
                  text: 'Login',
                ),
                SizedBox(height: Get.height * 0.04),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * 0.04),
                  child: Column(
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      const CustomTextField(
                        hintText: 'enter your email',
                        keyboardType: TextInputType.emailAddress,
                        prefixIcon: Icons.email_outlined,
                      ),
                      SizedBox(height: Get.height * 0.025),
                      const CustomTextField(
                        hintText: 'enter your password',
                        prefixIcon: Icons.lock_outline,
                        suffixIcon: Icon(
                          Icons.visibility_off_outlined,
                          color: AppTheme.kPrimaryColor,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: TextButton(
                          onPressed: () {
                            Get.to(() => const ForgotScreen());
                          },
                          child: AppTheme.descriptionTextStyle(
                            text: 'forgot password',
                            color: AppTheme.kPrimaryColor,
                          ),
                        ),
                      ),
                      SizedBox(height: Get.height * 0.04),
                      CustomButton(
                        btnText: 'Login',
                        onTap: () {
                          Get.to(() => const HomeScreen());
                        },
                      ),
                      SizedBox(height: Get.height * 0.03),
                      const SocialButtons(),
                    ],
                  ),
                ),
                const Spacer(),
                // SizedBox(height: Get.height * 0.02),
                AuthFooter(
                  text: 'Don\'t have an account',
                  btnText: 'Register',
                  onPressed: () {
                    Get.to(() => const RegisterScreen());
                  },
                ),
                SizedBox(height: Get.height * 0.003),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
