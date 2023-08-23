import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Screen/detail_screen.dart';

class DrinksScreen extends StatelessWidget {
  const DrinksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> foodname = [
      'Mocktail',
      ' Spicy Drink',
      'Mango Taquila',
      'Taquila'
    ];
    List<String> price = ['\$20', '\$30', '\$30', '\$30'];
    List<String> foodimage = [
      'https://images.pexels.com/photos/338713/pexels-photo-338713.jpeg?auto=compress&cs=tinysrgb&w=600',
      'https://images.pexels.com/photos/110472/pexels-photo-110472.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'https://images.pexels.com/photos/1200348/pexels-photo-1200348.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'https://images.pexels.com/photos/169391/pexels-photo-169391.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        InkWell(
          onTap: () {},
          child: Text(
            'See More',
            style: TextStyle(color: Colors.red),
          ),
        ),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DetailScreen(
                    image: foodimage[index],
                    text: foodname[index],
                    price: price[index]),
              )),
              child: Container(
                margin: EdgeInsets.only(
                  top: 5,
                  bottom: 40,
                  right: 20,
                ),
                width: 200,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Card(
                      child: Container(
                        height: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    Positioned(
                        top: 20,
                        child: PhysicalModel(
                          color: Colors.grey,
                          elevation: 2,
                          shape: BoxShape.circle,
                          child: CircleAvatar(
                            radius: 70,
                            backgroundImage: NetworkImage(foodimage[index]),
                          ),
                        )),
                    Container(
                      alignment: Alignment.topCenter,
                      height: 100,
                      child: Flexible(
                        child: Text(
                          foodname[index],
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          textScaleFactor: 1,
                          style: GoogleFonts.poppins(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 30,
                      child: Text(
                        price[index],
                        style: GoogleFonts.poppins(
                            fontSize: 19, fontWeight: FontWeight.w300),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
