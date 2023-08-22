import 'package:flutter/material.dart';
import '../Widget/Main_Screen_Item/main_item.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  late TabController _controller;
  int page = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        automaticallyImplyLeading: false,
        leading: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 20, left: 5),
            child: IconButton(onPressed: () {}, icon: const Icon(Icons.menu))),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 30, top: 20),
            child: Icon(Icons.shopping_cart),
          )
        ],
      ),
      body: main_screen_item_one(controller: _controller),
      bottomNavigationBar: bottomNNav(),
    );
  }

  Padding bottomNNav() {
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
          currentIndex: page,
          onTap: (value) {
            setState(() {
              page = value;
            });
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
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.watch_later,
                ),
                label: 'Home'),
          ]),
    );
  }
}
