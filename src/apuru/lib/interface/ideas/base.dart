
import '../importer.dart';

class IdeaPage extends StatefulWidget {
  const IdeaPage({super.key});

  @override
  State<IdeaPage> createState() => _IdeaPageState();
}

class _IdeaPageState extends State<IdeaPage> {
  int parrots = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: const [
            Image(
              image: AssetImage('../static/defaults/parrot'),
              fit: BoxFit.cover,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: bottomNavigationColor,
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
