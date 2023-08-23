import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Screen/detail_screen.dart';

class snack_screen extends StatelessWidget {
  const snack_screen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> foodname = ['Fruit Dish', 'Meet Spicy', 'Spicy', 'Burger'];
    List<String> price = ['\$200', '\$300', '\$300', '\$300'];
    List<String> foodimage = [
      'https://images.pexels.com/photos/916925/pexels-photo-916925.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'https://images.pexels.com/photos/3659862/pexels-photo-3659862.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'https://images.pexels.com/photos/1998920/pexels-photo-1998920.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'https://images.pexels.com/photos/2983099/pexels-photo-2983099.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
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
