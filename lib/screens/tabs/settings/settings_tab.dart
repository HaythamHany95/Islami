// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:islami_app/providers/app_config_provider.dart';
import 'package:islami_app/screens/tabs/settings/widgets/dropdown_formfield.dart';

/// Localization import
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  String? _dropdownModeValue;
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.lang,
            style: Theme.of(context).textTheme.labelMedium,
            textAlign: TextAlign.start,
          ),
          DropdownFormField(
            hintText: (provider.appLanguage == 'en')
                ? AppLocalizations.of(context)!.en
                : AppLocalizations.of(context)!.ar,
            value: (provider.appLanguage == 'en') ? "English" : "Arabic",
            items: [
              DropdownMenuItem(
                  value: "English",
                  child: Text(AppLocalizations.of(context)!.en)),
              DropdownMenuItem(
                  value: "Arabic",
                  child: Text(AppLocalizations.of(context)!.ar))
            ],
            onChanged: (selectedValue) {
              if (selectedValue == "English") {
                provider.changeLanguage('en');
              } else {
                provider.changeLanguage('ar');
              }
            },
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            AppLocalizations.of(context)!.mode,
            style: Theme.of(context).textTheme.labelMedium,
            textAlign: TextAlign.start,
          ),
          DropdownFormField(
            hintText: _dropdownModeValue ?? AppLocalizations.of(context)!.light,
            value: _dropdownModeValue,
            items: [
              DropdownMenuItem(
                  value: "Light",
                  child: Text(AppLocalizations.of(context)!.light)),
              DropdownMenuItem(
                  value: "Dark",
                  child: Text(AppLocalizations.of(context)!.dark))
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
