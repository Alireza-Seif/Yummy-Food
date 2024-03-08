import 'package:flutter/material.dart';
import 'package:yummy_food/constants/theme/app_colors.dart';

class OrLine extends StatelessWidget {
  const OrLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 130,
          height: 0.5,
          color: AppColors.greyscale,
        ),
        Text('   or   '),
        Container(
          width: 130,
          height: 0.5,
          color: AppColors.greyscale,
        ),
      ],
    );
  }
}