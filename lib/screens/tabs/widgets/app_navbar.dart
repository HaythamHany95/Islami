import 'package:flutter/material.dart';
import 'package:islami_app/utilities/mytheme.dart';

class AppBottomNavigationBar extends StatelessWidget {
  final int currenIndex;
  final Function(int)? onTap;

  const AppBottomNavigationBar(
      {required this.currenIndex, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: MyTheme.primaryLightColor),
      child: BottomNavigationBar(
        currentIndex: currenIndex,
        onTap: onTap,
        items: const [
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/icon_quran.png"),
                size: 50,
              ),
              label: "Quraan"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/icon_hadeth.png"),
              ),
              label: "Ahadeth"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/icon_sebha.png"),
                size: 52,
              ),
              label: "Sebha"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/icon_radio.png"),
              ),
              label: "Radio"),
        ],
      ),
    );
  }
}
