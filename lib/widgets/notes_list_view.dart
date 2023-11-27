import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_exercise/cubits/notes_cubit/cubit/notes_cubit.dart';
import '../models/note_model.dart';
import 'custom_note_item.dart';
import 'on_swipe_widget.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesCubit>(context).notes ?? [];
        return Expanded(
            child: ListView.builder(
                itemCount: notes.length,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => Dismissible(
                    background: const OnSwipeWidget(text: 'Done',color: Colors.green, alignment: Alignment.centerLeft,),
                    secondaryBackground:const OnSwipeWidget(text: 'Delete',color: Colors.red, alignment: Alignment.centerRight) ,
                    onDismissed: (dircetion) {
                      notes[index].delete();
                      BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                    },
                    key: UniqueKey(),
                    child: NoteItem(
                      noteModel: notes[index],
                    ))));
      },
    );
  }
}

