import 'package:flutter/material.dart';
import 'package:yummy_food/components/icon/icon_view.dart';
import 'package:yummy_food/constants/theme/app_icons.dart';
import 'package:yummy_food/constants/theme/app_theme.dart';

class MainAppBarX extends StatelessWidget {
  const MainAppBarX({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'NYC, Broadwa...  >',
        style: MyTextStyles.app_bar_one,
      ),
      actions: [
        IconButton(
          icon: IconView(
            icon: AppIcons.notification,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: IconView(
            icon: AppIcons.bag,
            color: Colors.black,
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
