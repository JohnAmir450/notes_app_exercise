import 'package:flutter/material.dart';

import '../constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    this.onsaved,
    this.maxLines = 1,
    this.onChanged,
    this.controller,
  });
  final String hint;
  final void Function(String)? onChanged;
  final void Function(String?)? onsaved;
  final int maxLines;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      onSaved: onsaved,
      cursorColor: kPrimayColor,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Text must be added';
        } else {
          return null;
        }
      },
      maxLines: maxLines,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: kPrimayColor),
          enabledBorder: buildBorder(),
          border: buildBorder(),
          focusedBorder: buildBorder(kPrimayColor)),
    );
  }

  OutlineInputBorder buildBorder([color]) => OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: BorderSide(color: color ?? Colors.white));
}
