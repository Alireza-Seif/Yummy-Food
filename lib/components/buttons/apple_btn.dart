
import 'package:flutter/material.dart';
import 'package:yummy_food/components/icon/icon_view.dart';
import 'package:yummy_food/constants/theme/app_icons.dart';
import 'package:yummy_food/constants/theme/app_theme.dart';

class AppleBTN extends StatelessWidget {
  const AppleBTN({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton( 
    child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconView(
            icon: AppIcons.apple,
          ),
          SizedBox(width: 22),
          Text(
            'Continue with GoogleApple',
            style: MyTextStyles.button_one,
          ),
        ],
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black, fixedSize: Size(327, 44)),
      onPressed: () {});
  }
}