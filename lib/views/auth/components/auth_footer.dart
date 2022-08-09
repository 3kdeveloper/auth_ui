import '../../../utils/exports.dart';

class AuthFooter extends StatelessWidget {
  final String text;
  final String btnText;
  final VoidCallback onPressed;

  const AuthFooter({
    Key? key,
    required this.text,
    required this.btnText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        AppTheme.descriptionTextStyle(text: text),
        TextButton(
          onPressed: onPressed,
          child: AppTheme.descriptionTextStyle(
            text: btnText,
            color: AppTheme.kPrimaryColor,
          ),
        ),
      ],
    );
  }
}
