import '../importer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: FutureBuilder(
          future: getUserList(),
          builder: (context, snapshot) {
            // WhileConnecting
            if (snapshot.connectionState != ConnectionState.done) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            // If error
            if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            }
            // If data exists
            if (snapshot.hasData) {
              Map<String, dynamic> data = snapshot.data!;
              return Text(data.toString());
            } else {
              return const Text('Nodata');
            }
          },
        ),
      ),
    );
  }
}
