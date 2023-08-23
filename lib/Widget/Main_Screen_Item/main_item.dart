import 'package:flutter/material.dart';
import 'package:food_app/Widget/Main_Screen_Item/drinks.dart';
import 'package:food_app/Widget/Main_Screen_Item/food.dart';
import 'package:food_app/Widget/Main_Screen_Item/sauces.dart';
import 'package:food_app/Widget/Main_Screen_Item/snackes.dart';
import 'package:google_fonts/google_fonts.dart';

class main_screen_item_one extends StatefulWidget {
  const main_screen_item_one({
    super.key,
  });

  @override
  State<main_screen_item_one> createState() => _main_screen_item_oneState();
}

class _main_screen_item_oneState extends State<main_screen_item_one>
    with TickerProviderStateMixin {
  late TabController _controller;
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
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 30, top: 20),
            child: InkWell(
                onTap: () => Navigator.of(context).pushNamed('/cart'),
                child: Icon(Icons.shopping_cart)),
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20, top: 10, right: 20),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Delicious\nfood for you",
              style: GoogleFonts.poppins(
                  fontSize: 40, fontWeight: FontWeight.w300),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              height: 150,
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(
                      top: 20,
                    ),
                    height: 50,
                    width: double.infinity,
                    child: TextField(
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                          hintText: 'Search your food....',
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black.withOpacity(0.5),
                          )),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 0.3)),
                  ),
                  Spacer(),
                  TabBar(
                      isScrollable: true,
                      indicatorSize: TabBarIndicatorSize.label,
                      controller: _controller,
                      labelColor: Colors.red,
                      indicatorColor: Colors.red,
                      dividerColor: Colors.transparent,
                      tabs: [
                        Tab(
                          child: Text(
                            'Food',
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                                letterSpacing: 1.5),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Drinks',
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                                letterSpacing: 1.5),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Snacks',
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                                letterSpacing: 1.5),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Sauces',
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                                letterSpacing: 1.5),
                          ),
                        ),
                      ])
                ],
              ),
            ),
            Expanded(
                child: TabBarView(controller: _controller, children: [
              FoodScreen(),
              DrinksScreen(),
              snack_screen(),
              SaucesScreen()
            ]))
          ],
        ),
      ),
    );
  }
}
