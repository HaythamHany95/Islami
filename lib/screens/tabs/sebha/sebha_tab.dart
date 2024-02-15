import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  @override
  Widget build(BuildContext context) {
    /// MARK: Variables

    // List<String> azkar = [
    //   "سبحان الله",
    //   "الحمدلله",
    //   "لا اله إلا الله",
    //   "الله أكبر",
    //   "لا حول ولا قوة إلا بالله"
    // ];
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              child: Image.asset("assets/images/sebha_ligh.png"),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 25),
              child: Text(
                "Tasbeh Count",
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          MaterialButton(
            minWidth: 69,
            height: 81,
            color: const Color(0xffcab497),
            shape: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(25)),
            onPressed: () {},
            child: const Text(
              "33",
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w900,
                  color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              child: const Text("سبحان الله",
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w900,
                      color: Colors.white))),
          const Spacer()
        ],
      ),
    );
  }
}
