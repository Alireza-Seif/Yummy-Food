import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:yummy_food/constants/language/app_string.dart';
import 'package:yummy_food/constants/theme/app_theme.dart';
import 'package:yummy_food/screens/auth/signup_screen.dart';

class SignUpLink extends StatelessWidget {
  const SignUpLink({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return 
       RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: AppString.do_not,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'SF Pro Display'),
            ),
            TextSpan(
                text: 'Sign up',
                style: MyTextStyles.text_button_one,
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpScreen(),
                      ),
                    );
                  }),
          ],
        ),
       );
  }
}
