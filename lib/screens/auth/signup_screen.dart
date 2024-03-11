import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:yummy_food/components/buttons/signin_btn.dart';
import 'package:yummy_food/components/text_field/email_tf.dart';
import 'package:yummy_food/components/text_field/full_name_tf.dart';
import 'package:yummy_food/components/text_field/password_tf.dart';
import 'package:yummy_food/components/text_field/phone_number_tf.dart';
import 'package:yummy_food/constants/theme/app_colors.dart';
import 'package:yummy_food/constants/theme/app_theme.dart';
import 'package:yummy_food/screens/home/home_screen.dart';
import 'package:yummy_food/screens/splash/on_boarding_screen.dart';
import 'package:yummy_food/widgets/auth/appbar/appbar_x.dart';
import 'package:yummy_food/widgets/auth/forgot_tb.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AppBarX(title: 'Sign in', destinationPage: Onboarding()),
            SizedBox(
              height: 50,
            ),
            FullNameTF(),
            SizedBox(
              height: 16,
            ),
            PhoneNumberTF(),
            SizedBox(
              height: 16,
            ),
            EmailTF(),
            SizedBox(
              height: 16,
            ),
            PasswordTF(),
            SizedBox(
              height: 16,
            ),
            PasswordTF(),
            SizedBox(height: 12),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text:
                        "By clicking Create account, you agree to the system's\n",
                    style: TextStyle(
                        color: AppColors.grayscale70,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'SF Pro Display'),
                  ),
                  TextSpan(
                    text: 'Terms and policies',
                    style: MyTextStyles.text_button_one,
                  ),
                ],
              ),
            ),
            SizedBox(height: 42),
            SignInBTN(
              destinationPage: HomeScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
