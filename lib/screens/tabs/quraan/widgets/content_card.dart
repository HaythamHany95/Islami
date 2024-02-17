import 'package:flutter/material.dart';
import 'package:islami_app/utilities/mytheme.dart';

class ContentCard extends StatelessWidget {
  final String name;
  final int? itemCount;
  final Widget? Function(BuildContext, int) itemBuilder;

  const ContentCard(
      {super.key,
      required this.name,
      required this.itemCount,
      required this.itemBuilder});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.06,
        vertical: MediaQuery.of(context).size.height * 0.04,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(25)),
        gradient: LinearGradient(
          colors: [Colors.white, Colors.white38],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: Column(children: [
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.width * 0.06,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  name,
                  textAlign: TextAlign.end,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(right: 40),
                child: IconButton(
                  onPressed: () {},
                  icon: const ImageIcon(
                    AssetImage("assets/images/Icon awesome-play-circle.png"),
                    size: 40,
                  ),
                ),
              ))
            ],
          ),
        ),
        Divider(
          thickness: 3,
          color: MyTheme.primaryLightColor,
          endIndent: MediaQuery.of(context).size.width * 0.08,
          indent: MediaQuery.of(context).size.width * 0.08,
        ),
        Expanded(
            child: ListView.builder(
          itemCount: itemCount,
          itemBuilder: itemBuilder,
        ))
      ]),
    );
  }
}
