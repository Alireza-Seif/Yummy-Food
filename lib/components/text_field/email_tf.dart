import 'package:flutter/material.dart';
import 'package:yummy_food/constants/theme/app_colors.dart';
import 'package:yummy_food/constants/theme/app_theme.dart';

class EmailTF extends StatefulWidget {
  const EmailTF({Key? key}) : super(key: key);

  @override
  _PhoneTextFieldState createState() => _PhoneTextFieldState();
}

class _PhoneTextFieldState extends State<EmailTF> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 25,
            ),
            Text(
              'Email',
              style: MyTextStyles.title_style_two,
            ),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        SizedBox(
          width: 360,
          height: 50,
          child: TextField(
            controller: _controller,
            decoration: InputDecoration(
              hintText: 'Enter email',
              hintStyle: MyTextStyles.input_style_one,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: AppColors.grayscale60)),
            ),
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.done,
          ),
        ),
      ],
    );
  }
}
