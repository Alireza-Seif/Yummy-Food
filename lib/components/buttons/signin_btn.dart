import 'package:flutter/material.dart';
import 'package:yummy_food/constants/theme/app_colors.dart';
import 'package:yummy_food/constants/theme/app_theme.dart';

class SignInBTN extends StatelessWidget {
  const SignInBTN({
    super.key,required this.destinationPage, required this.title,
  });

  final Widget destinationPage;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        title,
        style: MyTextStyles.button_one,
      ),
      onPressed: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => destinationPage
        ));
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary, fixedSize: Size(360, 50)),
    );
  }
}
