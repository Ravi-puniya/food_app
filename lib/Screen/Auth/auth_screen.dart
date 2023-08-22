import 'package:flutter/material.dart';
import 'package:food_app/Screen/Auth/login_screen.dart';
import 'package:food_app/Screen/Auth/signup_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> with TickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    print('Hello');
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //  Container(
      //   alignment: Alignment.center,
      //   height: MediaQuery.of(context).size.height * 0.45,
      //   decoration: BoxDecoration(
      //       boxShadow: [BoxShadow(blurRadius: 2, color: Colors.grey)],
      //       color: Colors.white,
      //       borderRadius: BorderRadius.only(
      //           bottomLeft: Radius.circular(25),
      //           bottomRight: Radius.circular(25))),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Spacer(),
      //       Image.asset('assets/icons/icon_large.png'),
      //       Spacer(),
      //       Container(
      //         margin: EdgeInsets.only(
      //           left: 10,
      //           right: 10,
      //         ),
      //         child: TabBar(
      //           controller: _controller,
      //           dividerColor: Colors.transparent,
      //           labelColor: Colors.red,
      //           indicatorColor: Colors.red,
      //           tabs: [
      //             Tab(
      //               child: Text(
      //                 'Login',
      //                 style: TextStyle(fontWeight: FontWeight.w200),
      //               ),
      //             ),
      //             Tab(
      //               child: Text(
      //                 'Signup',
      //                 style: TextStyle(fontWeight: FontWeight.w200),
      //               ),
      //             )
      //           ],
      //         ),
      //       ),
      //     ],
      //   ),
      // ),

      body: Container(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * 0.45,
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(blurRadius: 2, color: Colors.grey)],
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  Image.asset('assets/icons/icon_large.png'),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    child: TabBar(
                      controller: _controller,
                      dividerColor: Colors.transparent,
                      labelColor: Colors.red,
                      indicatorColor: Colors.red,
                      tabs: [
                        Tab(
                          child: Text(
                            'Login',
                            style: TextStyle(fontWeight: FontWeight.w200),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Signup',
                            style: TextStyle(fontWeight: FontWeight.w200),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                  controller: _controller,
                  children: [LogInScreen(), SignUpScreen()]),
            ),
          ],
        ),
      ),
    );
  }
}
