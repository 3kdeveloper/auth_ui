import 'package:auth_ui_flutter/utils/exports.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

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
                  imagePath: 'assets/images/register.png',
                  text: 'Register',
                ),
                SizedBox(height: Get.height * 0.04),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * 0.04),
                  child: Column(
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
                      SizedBox(height: Get.height * 0.025),
                      const CustomTextField(
                        hintText: 'conform your password',
                        prefixIcon: Icons.lock_outline,
                        suffixIcon: Icon(
                          Icons.visibility_off_outlined,
                          color: AppTheme.kPrimaryColor,
                        ),
                      ),
                      SizedBox(height: Get.height * 0.08),
                      CustomButton(
                        btnText: 'Register',
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
                AuthFooter(
                  text: 'Already have an account',
                  btnText: 'Login',
                  onPressed: () {
                    Get.to(() => const LoginScreen());
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
