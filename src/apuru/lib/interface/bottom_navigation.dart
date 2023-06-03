import 'importer.dart';

const List tabList = [
  '/',
  '/timeline',
  '/settings',
];

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 8, 30, 8),
      color: Colors.white.withOpacity(0.3),
      child: GNav(
        selectedIndex: _calculateSelectedIndex(context),
        onTabChange: (int index) => _onItemTapped(index, context),
        padding: const EdgeInsets.all(8),
        textStyle:
            const TextStyle(fontWeight: FontWeight.w100, color: Colors.white),
        activeColor: Colors.white,
        tabBackgroundColor: bottomNavigationTabBackgroundColor,
        color: bottomNavigationColor,
        gap: 8,
        tabs: const [
          GButton(
            icon: Icons.add_reaction_sharp,
            text: 'アイディア',
          ),
          GButton(
            icon: Icons.schedule_outlined,
            text: 'タイムライン',
          ),
          GButton(
            icon: Icons.settings,
            text: 'マイページ',
          ),
        ],
      ),
    );
  }

  static int _calculateSelectedIndex(BuildContext context) {
    final GoRouter route = GoRouter.of(context);
    final String location = route.location;
    if (location.startsWith(tabList[1])) {
      return 1;
    } else if (location.startsWith(tabList[2])) {
      return 2;
    } else {
      return 0;
    }
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 1:
        context.go(tabList[1]);
        break;
      case 2:
        context.go(tabList[2]);
        break;
      case 0:
      default:
        GoRouter.of(context).go(tabList[0]);
        break;
    }
  }
}
