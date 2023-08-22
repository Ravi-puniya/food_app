import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 70, 10, 0.9),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Colors.red.withOpacity(0.5),
                    Colors.red.shade600
                  ])),
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 40, top: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          backgroundImage:
                              AssetImage('assets/icons/icon_small.png'),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Food For EveryOne',
                            style: GoogleFonts.boogaloo(
                                fontSize: 70,
                                height: 0.9,
                                color: Colors.white,
                                letterSpacing: 2))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        Positioned(
                          right: 0,
                          top: 45,
                          child: Image.asset('assets/images/ToyFaces_.png'),
                        ),
                        Positioned(
                          left: 0,
                          child: Image.asset(
                            'assets/images/ToyFaces.png',
                            height: 350,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () => Navigator.of(context).pushNamed('/auth'),
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(bottom: 35, left: 40, right: 40),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  'Get Statred',
                  style: TextStyle(
                      letterSpacing: 1,
                      color: Colors.red,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
