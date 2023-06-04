import 'dart:async';

import 'package:apuru/interface/components/components.dart';

import 'package:intl/intl.dart';
import '../importer.dart';

class IdeaPage extends StatefulWidget {
  const IdeaPage({super.key});

  @override
  State<IdeaPage> createState() => _IdeaPageState();
}

class _IdeaPageState extends State<IdeaPage> {
  int parrots = 0;
  late Timer _timer;
  late DateTime _time;

  @override
  void initState() {
    _time = DateTime.utc(0, 0, 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double imageWidth = MediaQuery.of(context).size.shortestSide / 10;
    return Scaffold(
      body: Column(children: [
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 16,
              height: 16,
              child: Image(
                image: AssetImage('../static/defaults/parrot.gif'),
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 8),
            Text('$parrots parrots!!'),
          ],
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          child: GridView.count(
            crossAxisCount: 10,
            children: [
              for (int i = 0; i < parrots; i++)
                Center(
                  child: Container(
                      padding: const EdgeInsets.all(8),
                      width: imageWidth,
                      height: imageWidth,
                      child: const Image(
                        image: AssetImage('../static/defaults/parrot.gif'),
                        fit: BoxFit.cover,
                      )),
                ),
            ],
          ),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
          onPressed: () => setState(() {
                parrots += 1;
              }),
          backgroundColor: bottomNavigationColor,
          child: const Icon(Icons.add)),
    );
  }
}
