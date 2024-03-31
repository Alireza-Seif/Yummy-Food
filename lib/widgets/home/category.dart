import 'package:flutter/material.dart';
import 'package:yummy_food/constants/image_strings.dart';
import 'package:yummy_food/widgets/images/clickable_image.dart';

class Category extends StatelessWidget {
  const Category({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 160,
      child: Wrap(
        direction: Axis.horizontal,
        spacing: 16,
        runSpacing: 20,
        children: [
          ClickableImage(
            imagePath: MyImages.flash_dals,
            text: 'Flash deals',
            onTap: () {},
          ),
          ClickableImage(
            imagePath: MyImages.nice_shop,
            text: 'Nice shop',
            onTap: () {},
          ),
          ClickableImage(
            imagePath: MyImages.points,
            text: 'Points',
            onTap: () {},
          ),
          ClickableImage(
            imagePath: MyImages.rice,
            text: 'Rice',
            onTap: () {},
          ),
          ClickableImage(
            imagePath: MyImages.noodles,
            text: 'Noodles',
            onTap: () {},
          ),
          ClickableImage(
            imagePath: MyImages.vegetable,
            text: 'Vegetable',
            onTap: () {},
          ),
          ClickableImage(
            imagePath: MyImages.bbq,
            text: 'BBQ',
            onTap: () {},
          ),
          ClickableImage(
            imagePath: MyImages.other,
            text: 'Other',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

