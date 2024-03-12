import 'package:flutter/material.dart';
import 'package:yummy_food/components/buttons/apple_btn.dart';
import 'package:yummy_food/components/buttons/face_book_btn.dart';
import 'package:yummy_food/components/buttons/google_btn.dart';
import 'package:yummy_food/components/buttons/signin_btn.dart';
import 'package:yummy_food/components/or_line.dart';
import 'package:yummy_food/components/rich_text/signup_link.dart';
import 'package:yummy_food/constants/image_strings.dart';
import 'package:yummy_food/screens/auth/signin_screen.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(MyImages.onBoarding),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Container(
            padding: EdgeInsets.only(bottom: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 265,
                  height: 64,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.white,
                        spreadRadius: 200,
                        blurRadius: 50,
                        offset: Offset(0, 300))
                  ]),
                  child: Image.asset(MyImages.yummy),
                ),
                SizedBox(
                  height: 160,
                ),
                SignInBTN(
                  destinationPage: LoginScreen(),
                ),
                SizedBox(
                  height: 24,
                ),
                OrLine(),
                SizedBox(
                  height: 24,
                ),
                GoogleBTN(),
                SizedBox(
                  height: 8,
                ),
                FaceBookBTN(),
                SizedBox(
                  height: 8,
                ),
                AppleBTN(),
                SizedBox(
                  height: 26,
                ),
                SignUpLink(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
