import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'services_screen.dart';
import 'articles_screen.dart';
import 'about_screen.dart';
import 'policies_screen.dart';
import 'contact_screen.dart';

class MainScaffold extends StatefulWidget {
  const MainScaffold({super.key});

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  int _currentIndex = 0;

  void _navigateToTab(int index) {
    setState(() => _currentIndex = index);
  }

  List<Widget> get _screens => [
        HomeScreen(onNavigateToTab: _navigateToTab),
        ServicesScreen(),
        ArticlesScreen(),
        AboutScreen(),
        PoliciesScreen(),
        ContactScreen(),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hải Phát IDC'),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Trang chủ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.construction_outlined),
            activeIcon: Icon(Icons.construction),
            label: 'Dịch vụ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article_outlined),
            activeIcon: Icon(Icons.article),
            label: 'Tin tức',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline),
            activeIcon: Icon(Icons.info),
            label: 'Giới thiệu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.policy_outlined),
            activeIcon: Icon(Icons.policy),
            label: 'Chính sách',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_phone_outlined),
            activeIcon: Icon(Icons.contact_phone),
            label: 'Liên hệ',
          ),
        ],
      ),
    );
  }
}
