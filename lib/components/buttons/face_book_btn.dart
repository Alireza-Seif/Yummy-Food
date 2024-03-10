import 'package:flutter/material.dart';
import 'package:yummy_food/components/icon/icon_view.dart';
import 'package:yummy_food/constants/theme/app_icons.dart';
import 'package:yummy_food/constants/theme/app_theme.dart';

class FaceBookBTN extends StatelessWidget {
  const FaceBookBTN({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconView(
            icon: AppIcons.face_book,
          ),
          SizedBox(width: 22),
          Text(
            'Continue with Facebook',
            style: MyTextStyles.button_one,
          ),
        ],
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF415792), fixedSize: Size(360, 44)),
      onPressed: () {});
  }
}