import 'dart:async';
import 'dart:io';
import 'dart:math' as math;

import 'package:apuru/interface/components/components.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

import 'package:intl/intl.dart';
import '../importer.dart';

List<String> gifNames = [
  "60fpsparrot.gif",
  "accessibleparrot.gif",
  "angelparrot.gif",
  "angryparrot.gif",
  "astronautparrot.gif",
  "aussiecongaparrot.gif",
  "aussieparrot.gif",
  "aussiereversecongaparrot.gif",
  "autonomousparrot.gif",
  "backwardsparrot.gif",
  "badparrot.gif",
  "balconyparrot.gif",
  "beerparrot.gif",
  "beretparrot.gif",
  "bikerparrot.gif",
  "biparrot.gif",
  "birthdaypartyparrot.gif",
  "bluntparrot.gif",
  "blurryparrot.gif",
  "bobaparrot.gif",
  "boomparrot.gif",
  "bootlegparrot.gif",
  "boredparrot.gif",
  "bouncingparrot.gif",
  "braveheartparrot.gif",
  "brazilianfanparrot.gif",
  "brazilianplayerparrot.gif",
  "bunnyparrot.gif",
  "cakeparrot.gif",
  "calvinist_parrot.gif",
  "ceilingparrot.gif",
  "chefparrot.gif",
  "chicoparrot.gif",
  "christmasparrot.gif",
  "coffeeparrot.gif",
  "confusedparrot.gif",
  "congaparrot.gif",
  "congapartyparrot.gif",
  "copparrot.gif",
  "covid19parrot.gif",
  "croissantparrot.gif",
  "dadparrot.gif",
  "daftpunkparrot.gif",
  "dailyparrot.gif",
  "darkmodeparrot.gif",
  "dealwithitnowparrot.gif",
  "dealwithitparrot.gif",
  "discoparrot.gif",
  "docparrot.gif",
  "donutparrot.gif",
  "everythingsfineparrot.gif",
  "evilparrot.gif",
  "exceptionallyfastparrot.gif",
  "fastparrot.gif",
  "flowerparrot.gif",
  "flyingmoneyparrot.gif",
  "footballparrot.gif",
  "frenchparrot.gif",
  "gentlemanparrot.gif",
  "githubparrot.gif",
  "glimpseparrot.gif",
  "gothparrot.gif",
  "grouchoparrot.gif",
  "hanamiparrot.gif",
  "hardhatparrot.gif",
  "harpoparrot.gif",
  "headbangingparrot.gif",
  "headingparrot.gif",
  "headsetparrot.gif",
  "hmmparrot.gif",
  "horizontalparrot.gif",
  "hypnoparrot.gif",
  "hypnoparrotdark.gif",
  "hypnoparrotlight.gif",
  "illuminatiparrot.gif",
  "imposterparrot.gif",
  "innersourceparrot.gif",
  "inverseparrot.gif",
  "invisibleparrot.gif",
  "jediparrot.gif",
  "jumpingparrot.gif",
  "jumpingparrotjr.gif",
  "kindasusparrot.gif",
  "laptop_parrot.gif",
  "levitationparrot.gif",
  "maracasparrot.gif",
  "mardigrasparrot.gif",
  "marshmallowparrot.gif",
  "maskparrot.gif",
  "mateparrot.gif",
  "meldparrot.gif",
  "mergeconflictparrot.gif",
  "mergeimmediatelyparrot.gif",
  "mergetrainparrot.gif",
  "michaeljacksonparrot.gif",
  "middleparrot.gif",
  "moonparrot.gif",
  "moonwalkingparrot.gif",
  "mustacheparrot.gif",
  "nodeparrot.gif",
  "norwegianblueparrot.gif",
  "opensourceparrot.gif",
  "originalparrot.gif",
  "parrot.gif",
  "parrotnotfound.gif",
  "partyparrot.gif",
  "phparrot.gif",
  "picassoparrot.gif",
  "pingpongparrot.gif",
  "pirateparrot.gif",
  "playcatchleftparrot.gif",
  "playcatchrightparrot.gif",
  "pokeparrot.gif",
  "popcornparrot.gif",
  "portalblueparrot.gif",
  "portalorangeparrot.gif",
  "pumpkinparrot.gif",
  "quadparrot.gif",
  "raceconditionparrot.gif",
  "reactparrot.gif",
  "redbullparrot.gif",
  "redenvelopeparrot.gif",
  "redhatparrot.gif",
  "reversecongaparrot.gif",
  "reverseparrot.gif",
  "reverseportalblueparrot.gif",
  "reverseportalorangeparrot.gif",
  "revolutionparrot.gif",
  "ripparrot.gif",
  "rubyparrot.gif",
  "rythmicalparrot.gif",
  "sadparrot.gif",
  "sassyparrot.gif",
  "scienceparrot.gif",
  "sherlockholmesparrot.gif",
  "shortparrot.gif",
  "shuffleparrot.gif",
  "sidewaysparrot.gif",
  "sintparrot.gif",
  "sithparrot.gif",
  "sleepingparrot.gif",
  "slowparrot.gif",
  "sneezyparrot.gif",
  "soccerparrot.gif",
  "spinningparrot.gif",
  "spyparrot.gif",
  "stableparrot.gif",
  "stayhomeparrot.gif",
  "stayhomeparrotcloser.gif",
  "stayhomeparrotwindow.gif",
  "staytfhomeparrot.gif",
  "sushiparrot.gif",
  "tennisparrot.gif",
  "thankyouparrot.gif",
  "thefastestparrot.gif",
  "thumbsupparrot.gif",
  "tiedyeparrot.gif",
  "tinfoilhatparrot.gif",
  "tpparrot.gif",
  "transparront.gif",
  "turndownforwatchparrot.gif",
  "twinsparrot.gif",
  "ultrafastparrot.gif",
  "unicornparrot.gif",
  "vaccineparrot.gif",
  "verticalparrot.gif",
  "vikingparrot.gif",
  "vueparrot.gif",
  "wendyparrot.gif",
  "wfhparrot.gif",
  "whitewalkerparrot.gif",
  "wineparrot.gif",
  "yosemitesamparrot.gif",
  "zombieparrot.gif",
  "zoukparrot.gif"
];

class IdeaPage extends StatefulWidget {
  const IdeaPage({super.key});

  @override
  State<IdeaPage> createState() => _GamePageState();
}

class _InitPageState extends State<IdeaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class _GamePageState extends State<IdeaPage> {
  int parrots = 0;
  final _stopWatchTimer = StopWatchTimer(
    mode: StopWatchMode.countDown,
  );
  @override
  void initState() {
    _stopWatchTimer.setPresetSecondTime(30);
    _stopWatchTimer.onStartTimer();
    super.initState();
  }

  @override
  void dispose() {
    _stopWatchTimer.dispose();
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
      floatingActionButton: FloatingActionButton(
          onPressed: () => setState(() {
                parrots += 1;
              }),
          backgroundColor: bottomNavigationColor,
          child: const Icon(Icons.add)),
    );
  }
}
