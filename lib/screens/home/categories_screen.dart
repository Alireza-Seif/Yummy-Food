import 'package:flutter/material.dart';
import 'package:yummy_food/constants/image_strings.dart';
import 'package:yummy_food/constants/theme/app_theme.dart';
import 'package:yummy_food/screens/home/home_screen.dart';
import 'package:yummy_food/widgets/home/category.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imageList = [
      MyImages.flash_dals,
      MyImages.nice_shop,
      MyImages.fast_food,
      MyImages.noodles,
      MyImages.rice,
      MyImages.vegetable,
      MyImages.korean_food,
      MyImages.frozen,
      MyImages.drinks,
      MyImages.sweet_food,
      MyImages.bbq,
    ];

    List<String> titleList = [
      'Flash Dals',
      'Nice Shop',
      'Fast Food',
      'Bun Pho',
      'Rice',
      'Vegetable',
      'Korean Food',
      'Frozen',
      'Drinks',
      'Sweet Food',
      'BBQ',
    ];

    return Scaffold(
      backgroundColor: Color(0xFFF3F3F3),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Category',
          style: MyTextStyles.title_style_one,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            NavigatorPage(context, HomeScreen());
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        elevation: 1,
        shadowColor: Colors.black,
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4),
          shrinkWrap: true,
          itemCount: 11,
          itemBuilder: (_, index) {
            return ErticalCategoriesPage(
              image: imageList[index],
              title: titleList[index],
            );
          },
        ),
      ),
    );
  }
}

class ErticalCategoriesPage extends StatelessWidget {
  const ErticalCategoriesPage({
    super.key,
    required this.image,
    required this.title,
    this.backgroundColor,
    this.onTap,
  });

  final String image, title;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 72,
        width: 72,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                  child: Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
              )),
            ),
            const SizedBox(
              height: 11,
            ),
            Text(
              title,
              style: MyTextStyles.category_style,
            )
          ],
        ),
      ),
    );
  }
}
