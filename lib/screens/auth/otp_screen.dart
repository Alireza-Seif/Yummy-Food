import 'dart:async';

import 'package:flutter/material.dart';
import 'package:yummy_food/components/buttons/continue_btn.dart';
import 'package:yummy_food/constants/language/app_string.dart';
import 'package:yummy_food/constants/theme/app_theme.dart';
import 'package:yummy_food/screens/auth/signup_screen.dart';
import 'package:yummy_food/screens/home/home_screen.dart';
import 'package:yummy_food/widgets/appbar/appbar_x.dart';
import 'package:yummy_food/widgets/auth/otp_form.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  int _start = 60;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
            _start = 60;
            startTimer();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBarX(title: 'Enter OTP', destinationPage: SignUpScreen()),
          SizedBox(height: 200),
          Text(AppString.otp_enter, style: MyTextStyles.title_style_tow),
          SizedBox(height: 16),
          OtpForm(),
          SizedBox(height: 16),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: AppString.otp_verification,
                    style: MyTextStyles.title_style_four),
                TextSpan(
                    text: ' 0922******', style: MyTextStyles.text_button_one)
              ],
            ),
          ),
          SizedBox(height: 24),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: AppString.otp_have,
                    style: MyTextStyles.title_style_three),
                TextSpan(
                    text: 'Resend ($_start seconds)',
                    style: MyTextStyles.text_button_one)
              ],
            ),
          ),
          SizedBox(height: 32),
          ContinueBTN(destinationPage: HomeScreen()),
        ],
      ),
    );
  }
}
