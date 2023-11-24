import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.hint,
    this.onsaved,
     this.maxLines=1,
  });
  final String hint;
  void Function(String?)? onsaved;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onsaved,
      maxLines: maxLines,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          hintText: hint,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(18))),
    );
  }
}
