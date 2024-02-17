import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/screens/tabs/quraan/models/surah.dart';
import 'package:islami_app/screens/tabs/quraan/widgets/content_card.dart';
import 'package:islami_app/utilities/mytheme.dart';

class SurahScreen extends StatefulWidget {
  static const String routeName = "surah_screen";

  const SurahScreen({super.key});

  @override
  State<SurahScreen> createState() => _SurahScreenState();
}

class _SurahScreenState extends State<SurahScreen> {
  /// [ MARK ] Variables:
  List<String> _ayat = [];

  /// [ MARK ] Utilities:
  Future<void> loadFile(int index) async {
    String content =
        await rootBundle.loadString("assets/files/quraan/${index + 1}.txt");
    List<String> lines = content.split('\n');

    _ayat = lines;
    setState(() {});
  }

  /// [ MARK ] STF LifeCycle:
  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)?.settings.arguments as Surah;
    if (_ayat.isEmpty) {
      loadFile(arg.index);
    }

    return Stack(children: [
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
        body: _ayat.isEmpty
            ? Center(
                child: CircularProgressIndicator(
                color: MyTheme.primaryLightColor,
              ))
            : ContentCard(
                name: "سورة ${arg.name}",
                itemCount: _ayat.length,
                itemBuilder: ((context, i) => Text(
                      "${_ayat[i]}(${(i + 1)})",
                      textDirection: TextDirection.rtl,
                      style: Theme.of(context).textTheme.titleSmall,
                      textAlign: TextAlign.center,
                    ))),
      )
    ]);
  }
}
