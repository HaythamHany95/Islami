// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

/// Localization import
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/screens/tabs/settings/widgets/dropdown_formfield.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  String? _dropdownLangValue;
  String? _dropdownModeValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Language",
            style: Theme.of(context).textTheme.labelMedium,
            textAlign: TextAlign.start,
          ),
          DropdownFormField(
            hintText: _dropdownLangValue ?? "English",
            value: _dropdownLangValue,
            items: const [
              DropdownMenuItem(value: "English", child: Text('English')),
              DropdownMenuItem(value: "Arabic", child: Text("Arabic"))
            ],
            onChanged: (selectedValue) {
              _dropdownLangValue = selectedValue;
              print(_dropdownLangValue);
              setState(() {});
            },
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Mode",
            style: Theme.of(context).textTheme.labelMedium,
            textAlign: TextAlign.start,
          ),
          DropdownFormField(
            hintText: _dropdownModeValue ?? "Light",
            value: _dropdownModeValue,
            items: const [
              DropdownMenuItem(value: "Light", child: Text('Light')),
              DropdownMenuItem(value: "Dark", child: Text("Dark"))
            ],
            onChanged: (selectedValue) {
              _dropdownModeValue = selectedValue;
              print(_dropdownModeValue);
              setState(() {});
            },
          )
        ],
      ),
    );
  }
}
