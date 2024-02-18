import 'package:flutter/material.dart';
import 'package:islami_app/screens/tabs/hadeth/models/hadeth.dart';
import 'package:islami_app/screens/tabs/quraan/widgets/content_card.dart';

class HadethScreen extends StatefulWidget {
  static const String routeName = "hadeth_screen";

  const HadethScreen({super.key});

  @override
  State<HadethScreen> createState() => _HadethScreenState();
}

class _HadethScreenState extends State<HadethScreen> {
  /// [ MARK ] STF LifeCycle:
  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)?.settings.arguments as Hadeth;

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
        body: ContentCard(
            name: arg.title,
            itemCount: arg.content.length,
            itemBuilder: ((context, i) => Text(
                  arg.content[i],
                  style: Theme.of(context).textTheme.titleSmall,
                  textAlign: TextAlign.center,
                ))),
      )
    ]);
  }
}