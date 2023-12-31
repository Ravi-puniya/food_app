import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Widget/custom_button.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Orders",
          style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w300),
        ),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Image.asset('assets/images/Vector.png'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'No History yet',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              'Hit the orange button down \nbelow to create an History',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 20, right: 20, left: 20),
              child: CustomButton(
                color: Colors.red,
                fontsize: 16,
                weight: FontWeight.w300,
                textcolor: Colors.white,
                text: 'Start Ordering',
                height: 50,
                radius: 16,
                width: double.infinity,
              ),
            )
          ],
        ),
      ),
    );
  }
}
