import 'package:flutter/material.dart';
import 'package:yummy_food/constants/theme/app_colors.dart';

class BottomNavigationBarX extends StatefulWidget {
  const BottomNavigationBarX({
    super.key,
  });

  @override
  State<BottomNavigationBarX> createState() => _BottomNavigationBarXState();
}

class _BottomNavigationBarXState extends State<BottomNavigationBarX> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 28,
      fixedColor: AppColors.primary,
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 14,
      elevation: 0,
      currentIndex: _currentIndex,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_outline),
          label: 'Favorite',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list_alt),
          label: 'Order',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.emoji_events),
          label: 'Reward',
        ),
      ],
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }
}
