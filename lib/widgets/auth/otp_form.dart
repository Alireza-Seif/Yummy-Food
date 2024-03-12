import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:yummy_food/constants/theme/app_colors.dart';
import 'package:yummy_food/constants/theme/app_theme.dart';

class OtpForm extends StatelessWidget {
  const OtpForm({super.key});

  @override
  Widget build(BuildContext context) {
    final defultPinTheme = PinTheme(
      width: 40,
      height: 40,
      textStyle: MyTextStyles.title_style_two,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
    );

    return Form(
      child: SizedBox(width: 327,
        child: Pinput(
          closeKeyboardWhenCompleted: true,
          length: 6,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
          errorText: 'wrong code',
          defaultPinTheme: defultPinTheme,
          focusedPinTheme: defultPinTheme.copyWith(
            decoration: defultPinTheme.decoration!.copyWith(
              border: Border.all(color: AppColors.primary),
            ),
          ),
          onCompleted: (pin) => debugPrint(pin),
        ),
      ),
    );
  }
}
