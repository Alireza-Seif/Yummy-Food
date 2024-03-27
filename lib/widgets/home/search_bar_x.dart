import 'package:flutter/material.dart';
import 'package:yummy_food/components/icon/icon_view.dart';
import 'package:yummy_food/constants/language/app_string.dart';
import 'package:yummy_food/constants/theme/app_icons.dart';
import 'package:yummy_food/constants/theme/app_theme.dart';

class SearchBarX extends StatelessWidget {
  const SearchBarX({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 40,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFFECF1F6),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32),
              borderSide: BorderSide.none),
          hintText: AppString.search,
          hintStyle: MyTextStyles.search_bar_one,
          prefixIcon: SizedBox(
            height: 20,
            width: 20,
            child: IconView(
              icon: AppIcons.search_normal,
            ),
          ),
        ),
      ),
    );
  }
}
