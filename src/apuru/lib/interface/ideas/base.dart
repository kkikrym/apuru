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
        child: SingleChildScrollView(
          child: Column(
            children: [
              for (int i = 0; i <= parrots; i++)
                Center(
                  child: Container(
                      padding: const EdgeInsets.all(20),
                      width: 200,
                      height: 200,
                      child: const Image(
                        image: AssetImage('../static/defaults/parrot.gif'),
                        fit: BoxFit.cover,
                      )),
                )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            parrots += 1;
          });
        },
        backgroundColor: bottomNavigationColor,
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
