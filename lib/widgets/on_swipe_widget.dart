import 'package:flutter/material.dart';

class OnSwipeWidget extends StatelessWidget {
  const OnSwipeWidget({
    super.key, required this.text, required this.color, required this.alignment,
  });
final String text;
final Color color;
final AlignmentGeometry alignment;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16),
      child: Container(
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(18)),
        child: Align(
          alignment: alignment,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
             text,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}
