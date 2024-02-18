import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/screens/tabs/hadeth/hadeth_screen.dart';
import 'package:islami_app/screens/tabs/hadeth/models/hadeth.dart';
import 'package:islami_app/utilities/mytheme.dart';

class HadethTab extends StatefulWidget {
  const HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  /// [ MARK ] Variables:
  final List<Hadeth> _ahadeth = [];

  /// [ MARK ] Utilities:
  Future<void> _loadFile() async {
    String content =
        await rootBundle.loadString('assets/files/ahadeth/ahadeth.txt');
    List<String> ahadeth = content.split('#\r\n');

    for (int i = 0; i < ahadeth.length; i++) {
      List<String> lines = ahadeth[i].split('\n');
      String title = lines[0];
      lines.removeAt(0);
      Hadeth hadeth = Hadeth(title: title, content: lines);
      _ahadeth.add(hadeth);
      setState(() {});
    }
  }

  /// [ MARK ] STF LifeCycle:
  @override
  Widget build(BuildContext context) {
    if (_ahadeth.isEmpty) {
      _loadFile();
    }

    return Column(
      children: [
        Center(child: Image.asset("assets/images/hadeth_logo.png")),
        Divider(
          thickness: 2,
          color: MyTheme.primaryLightColor,
        ),
        Text(
          "Ahadeth",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Divider(
          thickness: 2,
          color: MyTheme.primaryLightColor,
        ),
        _ahadeth.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Expanded(
                child: ListView.separated(
                    separatorBuilder: (context, index) => Divider(
                          color: MyTheme.primaryLightColor,
                          thickness: 0.2,
                        ),
                    itemCount: _ahadeth.length,
                    itemBuilder: (context, i) {
                      return InkWell(
                        overlayColor:
                            //* TODOO : change the splashColor with overlay
                            const MaterialStatePropertyAll(Colors.transparent),
                        // borderRadius: BorderRadius.circular(5),
                        onTap: () {
                          Navigator.of(context).pushNamed(
                              HadethScreen.routeName,
                              arguments: Hadeth(
                                  title: _ahadeth[i].title,
                                  content: _ahadeth[i].content));
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 6),
                          child: Text(
                            _ahadeth[i].title,
                            style: Theme.of(context).textTheme.titleSmall,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      );
                    }),
              )
      ],
    );
  }
}
