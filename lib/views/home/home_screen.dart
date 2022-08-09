import '../../utils/exports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AppTheme.titleTextStyle(
          text: 'Woo you complete auth process',
        ),
      ),
    );
  }
}
