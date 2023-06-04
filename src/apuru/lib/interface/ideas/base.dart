import 'dart:async';
import 'dart:io';
import 'dart:math' as math;

import 'package:apuru/interface/components/components.dart';

import 'package:intl/intl.dart';
import '../importer.dart';

List<String> gifNames = [
  "asyncparrot.gif",
  "bananaparrot.gif",
  "blondesassyparrot.gif",
  "bluescluesparrot.gif",
  "bobrossparrot.gif",
  "chillparrot.gif",
  "coffeeparrot.gif",
  "cryptoparrot.gif",
  "dabparrot.gif",
  "darkbeerparrot.gif",
  "databaseparrot.gif",
  "deployparrot.gif",
  "dizzyparrot.gif",
  "docparrot.gif",
  "dreidelparrot.gif",
  "drupal_parrot.gif",
  "ethparrot.gif",
  "explodyparrot.gif",
  "fadingparrot.gif",
  "fidgetparrot.gif",
  "fiestaparrot.gif",
  "fixparrot.gif",
  "halalparrot.gif",
  "hamburgerparrot.gif",
  "harrypotterparrot.gif",
  "hd",
  "icecreamparrot.gif",
  "krakenparrot.gif",
  "loveparrot.gif",
  "luckyparrot.gif",
  "margaritaparrot.gif",
  "matrixparrot.gif",
  "mergedparrot.gif",
  "metalparrot.gif",
  "mongodbparrot.gif",
  "oldtimeyparrot.gif",
  "papalparrot.gif",
  "parrot.gif",
  "pear-parrots.gif",
  "pizzaparrot.gif",
  "portalparrot.gif",
  "pythonparrot.gif",
  "revertitparrot.gif",
  "rotatingparrot.gif",
  "ryangoslingparrot.gif",
  "schnitzelparrot.gif",
  "shipitparrot.gif",
  "shufflefurtherparrot.gif",
  "shufflepartyparrot.gif",
  "skiparrot.gif",
  "slomoparrot.gif",
  "sovjetparrot.gif",
  "stalkerparrot.gif",
  "standupparrot.gif",
  "tacoparrot.gif",
  "tripletsparrot.gif",
  "uparrowparrot.gif",
  "upvoteparrot.gif",
  "wave1parrot.gif",
  "wave2parrot.gif",
  "wave3parrot.gif",
  "wave4parrot.gif",
  "wave5parrot.gif",
  "wave6parrot.gif",
  "wave7parrot.gif",
  "wave8parrot.gif",
  "wave9parrot.gif"
];

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
                      child: Image(
                        image: AssetImage(
                            '$staticPath/${gifNames[math.Random().nextInt(gifNames.length)]}'),
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
