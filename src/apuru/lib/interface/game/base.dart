import 'dart:math' as math;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import '../importer.dart';

class IdeaPage extends StatefulWidget {
  const IdeaPage({super.key});

  @override
  State<IdeaPage> createState() => _GamePageState();
}

class _GamePageState extends State<IdeaPage> {
  int parrots = 0;

  final _stopWatchTimer = StopWatchTimer(
    mode: StopWatchMode.countDown,
  );

  bool isGaming = false;

  @override
  void initState() {
    _stopWatchTimer.setPresetSecondTime(30);
    super.initState();
  }

  @override
  void dispose() {
    _stopWatchTimer.dispose();
    isGaming = false;
    super.dispose();
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
              const SizedBox(width: 20),
              StreamBuilder<int>(
                stream: _stopWatchTimer.rawTime,
                initialData: _stopWatchTimer.rawTime.value,
                builder: (context, snapshot) {
                  final displayTime = StopWatchTimer.getDisplayTime(
                    snapshot.data!,
                    hours: false,
                  );
                  return Center(
                    child: SizedBox(
                      child: Text(
                        displayTime,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  );
                },
              ),
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
                              '$staticPath/defaults/hd/${gifNames[math.Random().nextInt(gifNames.length)]}'),
                          fit: BoxFit.cover,
                        )),
                  ),
              ],
            ),
          ),
        ]),
        floatingActionButton: Align(
          alignment: Alignment.bottomCenter,
          child: FloatingActionButton.large(
            onPressed: () {
              if (isGaming) {
                setState(() {
                  parrots += 1;
                });
              } else {
                setState(() {
                  isGaming = true;
                  _stopWatchTimer.fetchEnded.listen((event) {
                    setState(() {
                      isGaming = false;
                      _stopWatchTimer.onResetTimer();
                    });
                  });
                  _stopWatchTimer.onStartTimer();
                });
              }
            },
            backgroundColor: bottomNavigationColor,
            child: Builder(
              builder: (context) {
                if (isGaming) {
                  return const Icon(Icons.add);
                } else {
                  return const Text('Game Start');
                }
              },
            ),
          ),
        ));
  }
}
