import 'package:flutter/material.dart';
import 'package:islami_app/utilities/mytheme.dart';

/// Localization import
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
        items: [
          BottomNavigationBarItem(
              icon: const ImageIcon(
                AssetImage("assets/images/icon_quran.png"),
                size: 50,
              ),
              label: AppLocalizations.of(context)!.quraan),
          BottomNavigationBarItem(
              icon: const ImageIcon(
                AssetImage("assets/images/icon_hadeth.png"),
              ),
              label: AppLocalizations.of(context)!.ahadeth),
          BottomNavigationBarItem(
              icon: const ImageIcon(
                AssetImage("assets/images/icon_sebha.png"),
                size: 52,
              ),
              label: AppLocalizations.of(context)!.sebha),
          BottomNavigationBarItem(
              icon: const ImageIcon(
                AssetImage("assets/images/icon_radio.png"),
              ),
              label: AppLocalizations.of(context)!.radio),
          BottomNavigationBarItem(
              icon: const Icon(
                Icons.settings_suggest_outlined,
                size: 33,
              ),
              label: AppLocalizations.of(context)!.settings),
        ],
      ),
    );
  }
}
