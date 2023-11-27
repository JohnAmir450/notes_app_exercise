import 'package:flutter/material.dart';
import 'package:notes_app_exercise/models/note_model.dart';
import '../widgets/edit_notes_view_body.dart';

class EditView extends StatelessWidget {
  const EditView({super.key, required this.note});
final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: EditNoteViewBody(note: note,),
      ),
    );
  }
}

