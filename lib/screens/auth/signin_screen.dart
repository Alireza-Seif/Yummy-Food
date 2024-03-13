import 'package:flutter/material.dart';
import 'package:yummy_food/components/buttons/apple_btn.dart';
import 'package:yummy_food/components/buttons/face_book_btn.dart';
import 'package:yummy_food/components/buttons/google_btn.dart';
import 'package:yummy_food/components/buttons/signin_btn.dart';
import 'package:yummy_food/components/or_line.dart';
import 'package:yummy_food/components/rich_text/signup_link.dart';
import 'package:yummy_food/components/text_field/password_tf.dart';
import 'package:yummy_food/components/text_field/phone_number_tf.dart';
import 'package:yummy_food/widgets/appbar/appbar_x.dart';
import 'package:yummy_food/screens/home/home_screen.dart';
import 'package:yummy_food/screens/splash/on_boarding_screen.dart';
import 'package:yummy_food/widgets/auth/forgot_tb.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AppBarX(title: 'Sign in', destinationPage: Onboarding()),
            SizedBox(
              height: 24,
            ),
            PhoneNumberTF(),
            SizedBox(
              height: 16,
            ),
            PasswordTF(),
            ForgotTB(),
            SizedBox(height: 32.0),
            SignInBTN(
              title: 'Sign in',
              destinationPage: HomeScreen(),
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
            SizedBox(
              height: 75,
            ),
          ],
        ),
      ),
    );
  }
}
