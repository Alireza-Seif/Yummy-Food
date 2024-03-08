import 'package:flutter/material.dart';
import 'package:yummy_food/constants/theme/app_colors.dart';
import 'package:yummy_food/constants/theme/app_theme.dart';

class SignInX extends StatelessWidget {
  const SignInX({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text('Sign in',style: MyTextStyles.ButtonOne,),
      onPressed: () {},
      style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary,fixedSize: Size(327, 48)),
    );
  }
}
