import 'package:flutter/material.dart';
import 'package:yummy_food/constants/theme/app_colors.dart';
import 'package:yummy_food/constants/theme/app_theme.dart';
import 'package:yummy_food/screens/auth/signin_screen.dart';

class SignInBTN extends StatelessWidget {
  const SignInBTN({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        'Sign in',
        style: MyTextStyles.button_one,
      ),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ));
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary, fixedSize: Size(327, 48)),
    );
  }
}
