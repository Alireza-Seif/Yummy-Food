import 'package:flutter/material.dart';
import 'package:yummy_food/components/icon/icon_view.dart';
import 'package:yummy_food/constants/theme/app_icons.dart';
import 'package:yummy_food/constants/theme/app_theme.dart';

class GoogleBTN extends StatelessWidget {
  const GoogleBTN({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconView(
            icon: AppIcons.google,
          ),
          SizedBox(width: 22),
          Text(
            'Continue with Google',
            style: MyTextStyles.button_one,
          ),
        ],
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF4285F4), fixedSize: Size(360, 44)),
      onPressed: () {},
    );
  }
}
