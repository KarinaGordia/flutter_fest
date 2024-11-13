import 'package:flutter/material.dart';
import 'package:flutter_fest/application/ui/screens/main_tabs/main_tabs_view_model.dart';
import 'package:flutter_fest/application/ui/screens/main_tabs/schedule_tab_widget.dart';
import 'package:flutter_fest/resources/resources.dart';
import 'package:provider/provider.dart';

class MainTabsScreen extends StatelessWidget {
  const MainTabsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      body: _TabBodyWidget(),
      bottomNavigationBar: _BottomNavigationBarWidget(),
    );
  }
}

class _TabBodyWidget extends StatelessWidget {
  const _TabBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedIndex = context
        .select<MainTabsViewModel, int>((value) => value.currentTabIndex);
    return  IndexedStack(
      index: selectedIndex,
      children: [
        const ScheduleTabWidget(),
        Center(child: Text('Index $selectedIndex', style: const TextStyle(color: Colors.white),)),
        Center(child: Text('Index $selectedIndex', style: const TextStyle(color: Colors.white),)),
      ],
    );
  }
}

class _BottomNavigationBarWidget extends StatelessWidget {
  const _BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedIndex = context
        .select<MainTabsViewModel, int>((value) => value.currentTabIndex);
    final model = context.read<MainTabsViewModel>();

    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
            activeIcon: ImageIcon(AssetImage(Images.calendarFull)),
            icon: ImageIcon(AssetImage(Images.calendarOutlined)),
            label: ''),
        BottomNavigationBarItem(
            activeIcon: ImageIcon(AssetImage(Images.bookmarkFull)),
            icon: ImageIcon(AssetImage(Images.bookmarkOutlined)),
            label: ''),
        BottomNavigationBarItem(
            activeIcon: ImageIcon(AssetImage(Images.pointFull)),
            icon: ImageIcon(AssetImage(Images.pointOutlined)),
            label: ''),
      ],
      currentIndex: selectedIndex,
      onTap: model.setCurrentTabIndex,
    );
  }
}
