import 'package:flutter/material.dart';
import 'package:islami_app/screens/tabs/hadeth/hadeth_tab.dart';
import 'package:islami_app/screens/tabs/quraan/quraan_tab.dart';
import 'package:islami_app/screens/tabs/radio/radio_tab.dart';
import 'package:islami_app/screens/tabs/sebha/sebha_tab.dart';
import 'package:islami_app/screens/tabs/widgets/app_navbar.dart';

class TabsScreen extends StatefulWidget {
  static const String routeName = "tabs_screen";

  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int selectedTabIndex = 0;
  List<Widget> tabs = const [
    QuraanTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/default_bg.png",
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              "islami",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          bottomNavigationBar: AppBottomNavigationBar(
              currenIndex: selectedTabIndex,
              onTap: (newIndex) {
                setState(() {
                  selectedTabIndex = newIndex;
                });
              }),
          body: tabs[selectedTabIndex],
        )
      ],
    );
  }
}