import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app_exercise/cubits/notes_cubit/cubit/notes_cubit.dart';
import 'package:notes_app_exercise/models/note_model.dart';

import '../views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key, required this.noteModel,
  });
final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:4.0,horizontal: 16),
      child: GestureDetector(
        onTap: (){
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>const EditView())
        , (route) => true);
        },
        child: Container(
          padding:
              const EdgeInsets.only(top: 24, bottom: 24, right: 16, left: 16),
          decoration: BoxDecoration(
              color:  Color(noteModel.color),
              borderRadius: BorderRadius.circular(18)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                title:  Text(
                  noteModel.title,
                  style: const TextStyle(color: Colors.black, fontSize: 26),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(noteModel.subtitle,
                      style: TextStyle(
                          fontSize: 20, color: Colors.black.withOpacity(0.5))),
                ),
                trailing: IconButton(
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    noteModel.delete();
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  },
                ),
              ),
              Text(
                noteModel.date,
                style: TextStyle(color: Colors.black.withOpacity(0.5)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
