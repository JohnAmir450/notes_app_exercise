import 'package:flutter/material.dart';

import '../constants.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({
    super.key,
    required this.hint,
    this.onsaved,
    this.maxLines = 1,
  });
  final String hint;
   void Function(String?)? onsaved;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: kPrimayColor,
      onSaved: onsaved,
      maxLines: maxLines,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color:kPrimayColor ),
        enabledBorder: buildBorder(),
        border: buildBorder(),
        focusedBorder: buildBorder(kPrimayColor)

      ),
    );
  }

  OutlineInputBorder buildBorder([color]) => OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide:  BorderSide(color:color ??Colors.white));
}
