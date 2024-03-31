import 'package:flutter/material.dart';
import 'package:yummy_food/constants/theme/app_theme.dart';

class ClickableImage extends StatelessWidget {
  final String imagePath;
  final String text;
  final VoidCallback onTap;

  const ClickableImage({
    Key? key,
    required this.imagePath,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Column(
          children: [
            Image.asset(
              imagePath,
              width: 48,
              height: 48,
            ),
            SizedBox(height: 4),
            Text(
              text,
              style: MyTextStyles.category_style,
            ),
          ],
        ),
      ),
    );
  }
}
