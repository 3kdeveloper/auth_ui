import '../../utils/exports.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final TextInputType? keyboardType;
  final IconData? prefixIcon;
  final Widget? suffixIcon;

  const CustomTextField({
    Key? key,
    this.hintText,
    this.keyboardType,
    this.prefixIcon,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = const TextStyle(
      fontSize: 16,
      fontFamily: 'RobotoMono-Regular',
    );
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: TextFormField(
        cursorColor: AppTheme.kPrimaryColor,
        keyboardType: keyboardType,
        style: textStyle,
        decoration: InputDecoration(
          hintText: hintText ?? '',
          hintStyle: textStyle,
          prefixIcon: Icon(
            prefixIcon,
            color: AppTheme.kPrimaryColor,
          ),
          suffixIcon: suffixIcon,
          fillColor: AppTheme.kTextFieldColor.withOpacity(0.8),
          filled: true,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
