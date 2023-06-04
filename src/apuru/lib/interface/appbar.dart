
import 'importer.dart';

class CustomAppBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const CustomAppBar({Key? key, required this.scaffoldKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: appBarBackgroundColor,
      /*leading: IconButton(
        padding: symH20,
        splashRadius: 24,
        icon: const Icon(
          Icons.menu,
          color: Colors.grey,
        ),
        tooltip: 'Menu',
        onPressed: () => scaffoldKey.currentState!.openDrawer(),
      ),
      */
      title: const Text(
        'アプるにょ〜ん',
        style: TextStyle(color: blackText),
      ),
    );
  }
}
