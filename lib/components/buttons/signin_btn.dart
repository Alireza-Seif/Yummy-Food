import 'package:flutter/material.dart';
import 'package:yummy_food/constants/theme/app_colors.dart';
import 'package:yummy_food/constants/theme/app_theme.dart';

class SignInBTN extends StatelessWidget {
  const SignInBTN({
    super.key,required this.destinationPage,
  });

  final Widget destinationPage;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        'Sign in',
        style: MyTextStyles.button_one,
      ),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => destinationPage
        ));
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary, fixedSize: Size(327, 48)),
    );
  }
}
