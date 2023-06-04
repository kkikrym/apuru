import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import 'router.dart' as paths;
import 'interface/components/custom_colors.dart' as custom_colors;

List<String> gifNames = [];

main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: custom_colors.scaffoldBackgroundColor,
        fontFamily: 'NotoSansJP',
      ),
      title: 'アプるにょ〜ん Demo',
      routerConfig: paths.router,
    );
  }
}
