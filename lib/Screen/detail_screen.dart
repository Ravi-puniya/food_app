import 'package:flutter/material.dart';
import 'package:food_app/Widget/custom_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../Provider/main_provider.dart';

class DetailScreen extends StatelessWidget {
  String image;
  String text;
  String price;
  DetailScreen(
      {super.key,
      required this.image,
      required this.text,
      required this.price});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BottomNavBarProvider>(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
          )
        ],
      ),
      body: Container(
          margin: EdgeInsets.only(right: 20, left: 20, bottom: 5, top: 10),
          child: Column(
            children: [
              SizedBox(
                height: 250,
                width: double.infinity,
                child: Image.network(image),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  text,
                  style: GoogleFonts.poppins(
                      fontSize: 25, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  price,
                  style: GoogleFonts.poppins(
                      fontSize: 25, fontWeight: FontWeight.w300),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(
                      bottom: 20, top: 20, right: 20, left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Delivery Info',
                        style: GoogleFonts.poppins(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 20),
                        child: Flexible(
                          child: Text(
                            "Delivered between monday aug and thursday 20 from 8pm to 91:32 pm",
                            style: GoogleFonts.poppins(
                                fontSize: 17, fontWeight: FontWeight.w200),
                          ),
                        ),
                      ),
                      Text(
                        'Return policy',
                        style: GoogleFonts.poppins(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Flexible(
                          child: Text(
                            "All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.",
                            style: GoogleFonts.poppins(
                                fontSize: 17, fontWeight: FontWeight.w200),
                          ),
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          provider.additem(image, price, text);
                          print('Item Added');
                        },
                        child: CustomButton(
                          color: Colors.red,
                          fontsize: 20,
                          weight: FontWeight.w300,
                          textcolor: Colors.white,
                          text: 'Add to cart',
                          height: 50,
                          radius: 20,
                          width: double.infinity,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
