import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_exercise/cubits/notes_cubit/cubit/notes_cubit.dart';
import 'package:notes_app_exercise/models/note_model.dart';
import 'package:notes_app_exercise/widgets/show_snack_bar.dart';
import 'custom_app_bar.dart';
import 'custom_text_field.dart';
import 'edit_note_color_list_view.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({
    super.key,
    required this.note,
  });
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(
          icon: Icons.done,
          onPressed: () {
            widget.note.title = title ?? widget.note.title;
            widget.note.subtitle = subTitle ?? widget.note.subtitle;
            widget.note.save();
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            snackBar(context,
                text: 'Note has been edited successfully', color: Colors.green);
            Navigator.pop(context);
          },
          title: 'Edit Note',
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16),
          child: CustomTextField(
            onChanged: (value) {
              title = value;
            },
            hint: widget.note.title,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomTextField(
            onChanged: (value) {
              subTitle = value;
            },
            hint: widget.note.subtitle,
            maxLines: 5,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        EditNoteColorsList(noteModel: widget.note,),
      ],
    );
  }
}

