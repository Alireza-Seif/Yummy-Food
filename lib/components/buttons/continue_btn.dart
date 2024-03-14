import 'package:flutter/material.dart';

import 'package:yummy_food/constants/theme/app_colors.dart';
import 'package:yummy_food/constants/theme/app_theme.dart';
import 'package:yummy_food/widgets/auth/register_popup.dart';

class ContinueBTN extends StatelessWidget {
  const ContinueBTN({
    super.key,
    required this.destinationPage,
  });

  final Widget destinationPage;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        'Continue',
        style: MyTextStyles.button_one,
      ),
      onPressed: () {
        showDialog(
            context: context,
            builder: (context) {
              return Container(
                child: RegisterPopup(),
              );
            });
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary, fixedSize: Size(360, 50)),
    );
  }
}

