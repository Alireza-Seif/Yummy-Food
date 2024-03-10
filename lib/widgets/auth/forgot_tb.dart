import 'package:flutter/material.dart';
import 'package:yummy_food/constants/theme/app_theme.dart';

class ForgotTB extends StatelessWidget {
  const ForgotTB({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Forgot password?',
            style: MyTextStyles.text_button_one,
          ),
        ),
      ],
    );
  }
}
