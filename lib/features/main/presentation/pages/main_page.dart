part of '_pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  int _selectedIndex = 0;

  final PageStorageBucket _bucket = PageStorageBucket();

  final List<Widget> _pages = [
    const HomePage(
      key: PageStorageKey('HomePage'),
    ),
  ];

  void _selectTab(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: ColoredBox(
        color: BaseColors.scaffoldBacgorund,
        child: PageStorage(
          bucket: _bucket,
          child: IndexedStack(
            index: _selectedIndex,
            children: _pages,
          ),
        ),
      ),
      bottomNavigationBar: ButtomNavbar(
        initialActiveIndex: _selectedIndex,
        onTap: _selectTab,
        items: const [
          BottomNavbarItem(
            label: 'Home',
            assetPath: '',
          ),
        ],
      ),
    );
  }
}
