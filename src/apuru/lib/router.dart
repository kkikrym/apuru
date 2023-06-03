import 'package:apuru/interface/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'interface/ideas/base.dart' as idea_functions;
import 'interface/timeline/base.dart' as timeline_functions;
import 'interface/components/custom_colors.dart' as custom_colors;
import 'interface/appbar.dart';
import 'interface/drawer.dart';
import 'interface/bottom_navigation.dart';

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/// Gorouter router
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(navigatorKey: _rootNavigatorKey, routes: [
  ShellRoute(
      builder: (context, state, child) => ShellScaffold(child: child),
      routes: <GoRoute>[
        GoRoute(
          path: tabList[0],
          builder: (context, state) => const idea_functions.MyHomePage(),
        ),
        GoRoute(
          path: tabList[1],
          builder: (context, state) => const idea_functions.MyHomePage(),
        ),
        GoRoute(
          path: tabList[2],
          builder: (context, state) => const idea_functions.MyHomePage(),
        )
      ])
]);

// put parts like appbar, bottomnavibar, drawer into shellroute
class ShellScaffold extends StatefulWidget {
  final Widget child;

  const ShellScaffold({Key? key, required this.child}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ShellScaffoldState();
  }
}

class _ShellScaffoldState extends State<ShellScaffold> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: CustomAppBar(
            scaffoldKey: _scaffoldKey,
          )),
      drawer: const CustomDrawer(),
      body: widget.child,
      bottomNavigationBar: const SafeArea(
        child: CustomBottomNavigationBar(),
      ),
    );
  }
}