import 'package:flutter/material.dart';
import 'package:islami_app/screens/tabs/quraan/surah_screen.dart';
import 'package:islami_app/screens/tabs/tabs_screen.dart';
import 'package:islami_app/utilities/mytheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightMode,
      initialRoute: TabsScreen.routeName,
      routes: {
        TabsScreen.routeName: (context) => const TabsScreen(),
        SurahScreen.routeName: (context) => SurahScreen()
      },
    );
  }
}
