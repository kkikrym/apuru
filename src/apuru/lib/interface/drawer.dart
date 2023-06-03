import 'importer.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        width: MediaQuery.of(context).size.width * 0.8,
        child: SafeArea(
            child: ListView(
                // Important: Remove any padding from the ListView.
                padding: EdgeInsets.zero,
                children: const [
              Column(children: [
                SizedBox(height: 20),
                // User Tile
              ]),
            ])));
  }
}
