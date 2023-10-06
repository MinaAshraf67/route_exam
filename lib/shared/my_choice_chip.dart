// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyChoiceChip extends StatelessWidget {
  bool isSelected;
  String label;
  MyChoiceChip({
    Key? key,
    this.isSelected = false,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(
        label,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w600,
            color: isSelected ? const Color(0xFF6941C6) : Colors.black),
      ),
      selected: isSelected,
      selectedColor: const Color(0xFFF4EBFF),
      disabledColor: Colors.white,
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: Color(0xFFE4E7EC),
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(30.0),
      ),
      labelPadding: const EdgeInsets.all(8.0),
      elevation: 0.0,
    );
  }
}
