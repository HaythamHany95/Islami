import 'package:flutter/material.dart';
import 'package:islami_app/screens/tabs/sebha/widgets/sebha_stack.dart';

/// Localization import
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  /// [ MARK ]  Variables :-
  int _counter = 0;
  int _currentAzkarIndex = 0;
  double _turns = 0.0;

  final List<String> _azkar = [
    "سبحان الله",
    "الحمدلله",
    "لا اله إلا الله",
    "الله أكبر",
    "لا حول ولا قوة إلا بالله"
  ];

  /// [ MARK ]  Utilities :-
  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter == 34) {
        _counter = 0;
        _currentAzkarIndex = (_currentAzkarIndex + 1) % _azkar.length;
      }
    });
  }

  /// [ MARK ]  STF LifeCycel :-
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: 300,
            height: 300,
            child: GestureDetector(
                onTap: () {
                  _incrementCounter();
                  _turns += 0.03;
                  setState(() {});
                },
                child: SebhaStack(turns: _turns)),
          ),
          Text(
            AppLocalizations.of(context)!.tasbeh_count,
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.center,
            width: 69,
            height: 81,
            decoration: BoxDecoration(
                color: const Color(0xffcab497),
                borderRadius: BorderRadius.circular(25)),
            child: Text(
              "$_counter",
              style: const TextStyle(
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
              child: Text(_azkar[_currentAzkarIndex],
                  style: const TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w900,
                      color: Colors.white))),
          const SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
