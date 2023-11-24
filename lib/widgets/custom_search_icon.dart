import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(.2),
            borderRadius: BorderRadius.circular(18)),
        child: IconButton(
          icon: const Icon(
            Icons.search_rounded,
            size: 25,
          ),
          onPressed: () {},
        ));
  }
}