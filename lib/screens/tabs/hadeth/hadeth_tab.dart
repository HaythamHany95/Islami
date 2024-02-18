import 'package:flutter/material.dart';
import 'package:islami_app/utilities/mytheme.dart';

class HadethTab extends StatelessWidget {
  const HadethTab({super.key});

  @override
  Widget build(BuildContext context) {
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
        Expanded(
          child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                    color: MyTheme.primaryLightColor,
                    thickness: 0.2,
                  ),
              itemCount: 0,
              itemBuilder: (context, i) {
                return InkWell(
                  overlayColor:
                      //* TODOO : change the splashColor with overlay
                      const MaterialStatePropertyAll(Colors.transparent),
                  borderRadius: BorderRadius.circular(5),
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Text(
                      "data",
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
