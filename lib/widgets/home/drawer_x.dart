import 'package:flutter/material.dart';
import 'package:yummy_food/components/icon/icon_view.dart';
import 'package:yummy_food/constants/theme/app_colors.dart';
import 'package:yummy_food/constants/theme/app_icons.dart';
import 'package:yummy_food/constants/theme/app_theme.dart';

class DrawerX extends StatelessWidget {
  const DrawerX({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/man.jpg'),
            ),
            title: Text('Dang bao bao'),
            titleTextStyle: MyTextStyles.title_style_four,
            subtitle: Text('ID: 0443787676'),
            subtitleTextStyle: MyTextStyles.input_style_one,
          ),
          ListTile(
            leading: IconView(
              icon: AppIcons.wallet,
              color: AppColors.primary,
            ),
            title: Text('Wallet'),
            titleTextStyle: MyTextStyles.title_style_four,
          ),
          ListTile(
            leading: IconView(
              icon: AppIcons.location,
              color: AppColors.primary,
            ),
            title: Text('My Address'),
            titleTextStyle: MyTextStyles.title_style_four,
          ),
          ListTile(
            leading: IconView(
              icon: AppIcons.discount_shape,
              color: AppColors.primary,
            ),
            title: Text('Special offer/ Promotion'),
            titleTextStyle: MyTextStyles.title_style_four,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 24, bottom: 24),
            child: Divider(
              height: 1,
              color: AppColors.grayscale50,
            ),
          ),
          ListTile(
            title: Text('Language'),
            titleTextStyle: MyTextStyles.title_style_three,
          ),
          ListTile(
            title: Text('Order history'),
            titleTextStyle: MyTextStyles.title_style_three,
          ),
          ListTile(
            title: Text('Notification'),
            titleTextStyle: MyTextStyles.title_style_three,
          ),
          ListTile(
            title: Text('Share infomation'),
            titleTextStyle: MyTextStyles.title_style_three,
          ),
          ListTile(
            title: Text('Terms and policies'),
            titleTextStyle: MyTextStyles.title_style_three,
          ),
        ],
      ),
    );
  }
}
