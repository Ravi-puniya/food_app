import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavScreen extends StatelessWidget {
  const FavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'No Fav Added',
            style:
                GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Go and add your favourite\nfoood',
            textAlign: TextAlign.center,
            style:
                GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w200),
          ),
        ],
      ),
    ));
  }
}
