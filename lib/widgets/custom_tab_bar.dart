import 'package:crypto_trade_screen/widgets/tab_bar_text.dart';
import 'package:cupertino_tabbar/cupertino_tabbar.dart';
import 'package:flutter/material.dart';

import '../resources/app_colors.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({Key? key}) : super(key: key);

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  int cupertinoTabBarValue = 0;
  int cupertinoTabBarValueGetter() => cupertinoTabBarValue;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: CupertinoTabBar(
        AppColors.background,
        AppColors.darkGrey,
        const [
          TabBarText(
            text: 'Charts',
            color: Colors.white,
            fontSize: 14,
          ),
          TabBarText(
            text: 'Trade',
            color: Colors.white,
            fontSize: 14,
          ),
        ],
        cupertinoTabBarValueGetter,
        (int index) {
          setState(
            () {
              cupertinoTabBarValue = index;
            },
          );
        },
        borderRadius: BorderRadius.all(Radius.circular(8)),
        allowExpand: true,
      ),
    );
  }
}
