import 'package:flutter/material.dart';
import 'package:yummy_food/constants/theme/app_theme.dart';

class PasswordTF extends StatefulWidget {
  const PasswordTF({Key? key}) : super(key: key);

  @override
  _PhoneTextFieldState createState() => _PhoneTextFieldState();
}

class _PhoneTextFieldState extends State<PasswordTF> {
  TextEditingController _controller = TextEditingController();
  bool _isObscure = true;
  bool showError = false;

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
              'Password',
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
            obscureText: _isObscure,
            controller: _controller,
            decoration: InputDecoration(
              hintText: 'Enter password',
              hintStyle: MyTextStyles.input_style_one,
              suffix: IconButton(
                icon:
                    Icon(_isObscure ? Icons.visibility_outlined : Icons.visibility_off_outlined),
                onPressed: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                },
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color:
                      showError ? Colors.red : Theme.of(context).primaryColor,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color:
                      showError ? Colors.red : Theme.of(context).primaryColor,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            textInputAction: TextInputAction.done,
            onChanged: (value) {
              setState(() {
                showError = value.length < 8 && value.length > 0;
              });
            },
          ),
        ),
        if (showError)
          Padding(
            padding: const EdgeInsets.only(top: 8, right: 210),
            child: Text(
              'Wrong phone number',
              style: TextStyle(
                color: Color(0xFFE53935),
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
      ],
    );
  }
}
