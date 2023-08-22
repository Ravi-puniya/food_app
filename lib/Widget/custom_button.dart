import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  double height;
  double width;
  double radius;
  Color color;
  String text;
  double fontsize;
  Color textcolor;
  FontWeight weight;
  CustomButton(
      {super.key,
      required this.color,
      required this.fontsize,
      required this.weight,
      required this.textcolor,
      required this.text,
      required this.height,
      required this.radius,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: color,
      ),
      child: Text(
        text,
        style: GoogleFonts.openSans(
            fontSize: fontsize, color: textcolor, fontWeight: weight),
      ),
    );
  }
}
