import 'package:flutter/material.dart';
import 'package:food_app/Utils/global.dart';
import 'package:provider/provider.dart';
import '../Provider/main_provider.dart';
import '../Widget/Main_Screen_Item/main_item.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BottomNavBarProvider>(context);
    return Scaffold(
      body: pages[provider.currentIndex],
      bottomNavigationBar: bottomNNav(),
    );
  }

  Padding bottomNNav() {
    final provider = Provider.of<BottomNavBarProvider>(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 16, right: 10, left: 10),
      child: BottomNavigationBar(
          backgroundColor: Colors.red,
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.red.withOpacity(0.8),
          unselectedIconTheme: const IconThemeData(color: Colors.grey),
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w200),
          elevation: 0,
          currentIndex: provider.currentIndex,
          onTap: (value) {
            provider.updateIndex(value);
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                ),
                label: 'Favourite'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: 'Profile'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.watch_later,
                ),
                label: 'History'),
          ]),
    );
  }
}
