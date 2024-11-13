import 'package:flutter/material.dart';
import 'package:flutter_fest/resources/resources.dart';

class MainTabsScreen extends StatefulWidget {
  const MainTabsScreen({super.key});

  @override
  State<MainTabsScreen> createState() => _MainTabsScreenState();
}

class _MainTabsScreenState extends State<MainTabsScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
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
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
