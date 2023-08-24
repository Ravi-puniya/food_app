import 'package:flutter/material.dart';
import 'package:food_app/Widget/custom_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../Provider/main_provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BottomNavBarProvider>(context);
    print(provider.item.length);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Orders",
          style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w300),
        ),
        centerTitle: true,
      ),
      body: provider.item.isEmpty
          ? Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(),
                  Image.asset('assets/images/cart.png'),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'No Orders yet',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    'Hit the orange button down \nbelow to create an order',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200),
                  ),
                  Spacer(),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 20, right: 20, left: 20),
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
            )
          : Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 10,
              ),
              padding:
                  EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: provider.item.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Material(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Container(
                                margin: EdgeInsets.only(top: 20, bottom: 20),
                                height: 60,
                                width: double.infinity,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      height: 40,
                                      width: 40,
                                      child: Image.network(
                                        provider.item[index].imageurl,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          provider.item[index].title,
                                          style: GoogleFonts.poppins(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w200),
                                        ),
                                        Text(
                                          provider.item[index].price,
                                          style: GoogleFonts.poppins(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w200),
                                        )
                                      ],
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: GestureDetector(
                                        onTap: () {
                                          provider.deletItem(
                                              provider.item[index].imageurl, provider.item[index].price, provider.item[index].title);
                                        },
                                        child: Icon(
                                          Icons.delete,
                                          color: Colors.red,
                                        ),
                                      ),
                                    )
                                  ],
                                )),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 20, right: 20, left: 20),
                    child: CustomButton(
                      color: Colors.red,
                      fontsize: 16,
                      weight: FontWeight.w300,
                      textcolor: Colors.white,
                      text: 'Proceed to checkout',
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
