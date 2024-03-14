import 'package:flutter/material.dart';
import 'package:yummy_food/components/buttons/signin_btn.dart';
import 'package:yummy_food/constants/language/app_string.dart';
import 'package:yummy_food/constants/theme/app_colors.dart';
import 'package:yummy_food/constants/theme/app_theme.dart';
import 'package:yummy_food/screens/home/home_screen.dart';

class RegisterPopup extends StatelessWidget {
  const RegisterPopup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Container(
      margin: EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            AppString.otp_register,
            style: MyTextStyles.title_style_tow,
          ),
          SizedBox(
            height: 16,
          ),
          Icon(
            Icons.check_circle,
            size: 60,
            color: AppColors.primary,
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            '0922******',
            style: TextStyle(
              color: AppColors.primary,
              fontSize: 16,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            AppString.otp_phone,
            style: MyTextStyles.title_style_five,
          ),
          SizedBox(
            height: 16,
          ),
          SignInBTN(
              destinationPage: HomeScreen(), title: 'Continue on homepage'),
        ],
      ),
    ));
  }
}
