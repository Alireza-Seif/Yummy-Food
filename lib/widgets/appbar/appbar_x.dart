import 'package:flutter/material.dart';
import 'package:yummy_food/constants/theme/app_theme.dart';

class AppBarX extends StatelessWidget {
  const AppBarX({
    super.key,
    required this.title,
    required this.destinationPage,
  });

  final String title;
  final Widget destinationPage;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 4,)]),
      child: AppBar(
        centerTitle: true,
        title: Text(
          title,
          style: MyTextStyles.title_style_one,
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => destinationPage,
            ));
          },
        ),
      ),
    );
  }
}
