import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:yummy_food/components/icon/icon_view.dart';
import 'package:yummy_food/constants/image_strings.dart';
import 'package:yummy_food/constants/theme/app_icons.dart';
import 'package:yummy_food/constants/theme/app_theme.dart';
import 'package:yummy_food/widgets/appbar/main_appbar_x.dart';
import 'package:yummy_food/widgets/home/carousel_loading.dart';
import 'package:yummy_food/widgets/home/category.dart';
import 'package:yummy_food/widgets/home/drawer_x.dart';
import 'package:yummy_food/widgets/home/search_bar_x.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerX(),
      body: Column(
        children: [
          MainAppBarX(),
          SizedBox(height: 12),
          SearchBarX(),
          SizedBox(height: 8),
          CarouselSliderX(),
          SizedBox(height: 16),
          Category(),
        ],
      ),
    );
  }
}
