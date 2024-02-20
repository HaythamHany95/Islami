import 'package:flutter/material.dart';
import 'package:islami_app/utilities/mytheme.dart';

class DropdownFormField extends StatelessWidget {
  final String? hintText;
  final String? value;
  final List<DropdownMenuItem<String>>? items;
  final void Function(String?)? onChanged;
  const DropdownFormField(
      {this.hintText,
      this.value,
      required this.items,
      required this.onChanged,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: ButtonTheme(
        alignedDropdown: true,
        child: DropdownButtonFormField(
          isDense: true,
          borderRadius: BorderRadius.circular(20),
          dropdownColor: const Color(0xffcab497),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: Theme.of(context).textTheme.bodyMedium,
            filled: true,
            fillColor: MyTheme.primaryLightColor,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  20,
                ),
                borderSide: BorderSide.none),
          ),
          items: items,
          value: value,
          onChanged: onChanged,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
