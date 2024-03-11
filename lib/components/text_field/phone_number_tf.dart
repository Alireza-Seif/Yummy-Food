import 'package:flutter/material.dart';
import 'package:yummy_food/constants/theme/app_theme.dart';

class PhoneNumberTF extends StatefulWidget {
  const PhoneNumberTF({Key? key}) : super(key: key);

  @override
  _PhoneTextFieldState createState() => _PhoneTextFieldState();
}

class _PhoneTextFieldState extends State<PhoneNumberTF> {
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
              'Phone number',
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
            maxLength: 12,
            controller: _controller,
            decoration: InputDecoration(
              hintText: 'Enter your phone number',
              hintStyle: MyTextStyles.input_style_one,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              counterText: '',
            ),
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.done,
          ),
        ),
      ],
    );
  }
}
