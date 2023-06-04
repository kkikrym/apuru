
import '../importer.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
