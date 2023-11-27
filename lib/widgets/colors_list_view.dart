import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(radius: 35, backgroundColor: Colors.amber);
  }
}

class ColorsListView extends StatelessWidget {
  const ColorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 0.8),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) => const ColorItem(),
        itemCount: 10, separatorBuilder: (BuildContext context, int index) =>const SizedBox(width: 10,),
      ),
    );
  }
}
