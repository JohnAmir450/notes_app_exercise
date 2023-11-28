import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_exercise/cubits/add_note_cubit/add_note_cubit.dart';

import '../constants.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 35,
            child: CircleAvatar(radius: 32, backgroundColor: color))
        : CircleAvatar(radius: 35, backgroundColor: color);
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;

 
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 0.8),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) => GestureDetector(
          onTap: () {
            currentIndex = index;
            BlocProvider.of<AddNoteCubit>(context).color=kColorsList[index];
            setState(() {});
          },
          child: ColorItem(
            isActive: currentIndex == index ? true : false,
            color: kColorsList[index],
          ),
        ),
        itemCount: kColorsList.length,
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
          width: 10,
        ),
      ),
    );
  }
}
