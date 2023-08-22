import 'package:flutter/material.dart';
import 'package:food_app/Widget/custom_button.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 30, left: 30, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(
              top: 20,
            ),
            child: TextField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                isDense: true,
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)),
                labelStyle: TextStyle(
                    color: Colors.black,
                    height: 1,
                    fontWeight: FontWeight.w200),
                labelText: 'Email address',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 20,
            ),
            child: TextField(
              obscureText: true,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                isDense: true,
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)),
                labelStyle: TextStyle(
                    color: Colors.black,
                    height: 1,
                    fontWeight: FontWeight.w200),
                labelText: 'Password',
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Forgot Password ?',
            style: TextStyle(
                color: Colors.red,
                fontSize: 18,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.normal),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 20,
            ),
            child: InkWell(
              onTap: () => Navigator.of(context).pushReplacementNamed('/main'),
              child: CustomButton(
                  fontsize: 22,
                  textcolor: Colors.white,
                  weight: FontWeight.w200,
                  radius: 20,
                  text: 'Log in',
                  color: Colors.red,
                  height: 65,
                  width: double.infinity),
            ),
          )
        ],
      ),
    );
  }
}
