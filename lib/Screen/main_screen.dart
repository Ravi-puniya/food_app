import 'package:flutter/material.dart';
import 'package:food_app/Utils/global.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../Provider/main_provider.dart';
import 'dart:math';


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
      backgroundColor: provider.value == 1 ? Colors.red : Colors.white,
      body: Stack(
        children: [
          SafeArea(
            child: Container(
              margin: EdgeInsets.only(top: 70),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    margin: EdgeInsets.only(
                      top: 20,
                    ),
                    width: double.infinity,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Profile',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w200),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Divider(
                      color: Colors.white,
                      thickness: 0.3,
                    ),
                  ),
                  Container(
                    height: 50,
                    margin: EdgeInsets.only(
                      top: 20,
                    ),
                    width: double.infinity,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Icon(
                            Icons.shopping_bag,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Orders',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w200),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Divider(
                      color: Colors.white,
                      thickness: 0.3,
                    ),
                  ),
                  Container(
                    height: 50,
                    margin: EdgeInsets.only(
                      top: 20,
                    ),
                    width: double.infinity,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Icon(
                            Icons.local_offer_rounded,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'offers',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w200),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Divider(
                      color: Colors.white,
                      thickness: 0.3,
                    ),
                  ),
                  Container(
                    height: 50,
                    margin: EdgeInsets.only(
                      top: 20,
                    ),
                    width: double.infinity,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Icon(
                            Icons.contact_page_rounded,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Privacy policy',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w200),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Divider(
                      color: Colors.white,
                      thickness: 0.3,
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 50,
                    margin: EdgeInsets.only(top: 20, bottom: 20),
                    width: double.infinity,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Icon(
                            Icons.exit_to_app_outlined,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Log-Out',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w200),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: provider.value),
            duration: Duration(milliseconds: 600),
            curve: Curves.linear,
            builder: (context, value, child) {
              return Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()
                  ..setEntry(3, 2, .001)
                  ..setEntry(0, 3, 200 * value)
                  ..rotateY((pi / 6) * value),
                child: pages[provider.currentIndex],
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: provider.value == 1 ? null : bottomNNav(),
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
