import 'package:flutter/material.dart';
import '../constants.dart';
import '../models/note_model.dart';
import 'colors_list_view.dart';

class EditNoteColorsList extends StatefulWidget {
   const EditNoteColorsList({super.key, required this.noteModel});
final NoteModel noteModel;
  @override
  State<EditNoteColorsList> createState() => _EditNoteColorsListState();
}

class _EditNoteColorsListState extends State<EditNoteColorsList> {
late int currentIndex;

  @override
  void initState() {
    currentIndex=kColorsList.indexOf(Color(widget.noteModel.color));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        itemBuilder: (BuildContext context, int index) =>GestureDetector(
          onTap:(){
            currentIndex=index;
            widget.noteModel.color=kColorsList[index].value;
            setState(() {
              
            });
          } ,
          child: ColorItem(isActive: currentIndex==index?true:false, color: kColorsList[index])),
        itemCount: kColorsList.length,
        separatorBuilder: (BuildContext context, int index) =>const SizedBox(width: 8,),
      ),
    );
  }
}
